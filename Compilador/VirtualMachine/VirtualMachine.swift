//
//  VirtualMachine.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 03/11/21.
//

import Foundation
class VirtualMachine {
    
    let quadruples: [Quadruple]
    let constants: [String: Int]
    var symbolTable: SymbolTable
    var activeStack: Stack<ActivationRecord> = []
    var sleepStack: Stack<ActivationRecord> = []
    var readyStack: Stack<ActivationRecord> = []
    var virtualMemory : VirtualMemory
    var startedFunc = false
    
    init(quadruples: [Quadruple], constants: [String: Int], symbolTable: SymbolTable, globalMemory : InfoStack, constantsInfo: InfoStack){
        self.quadruples = quadruples
        self.constants = constants
        self.symbolTable = symbolTable
        let firstInstruction = quadruples[0]
        let firstStack = ActivationRecord(functionSymbol: self.symbolTable.lookup("main")!)
        firstStack.index = 0
        self.activeStack.push(firstStack)
        virtualMemory = VirtualMemory(globalInfo: globalMemory, constantsInfo: constantsInfo, activeFunc : firstStack, constants: constants)
    }
    
    func start(){
        var currentIndex : Int = self.activeStack.peek()!.index
        guard currentIndex < self.quadruples.count else {return}
        var currentQuadruple : Quadruple
        var arg1 : Int?
        var arg2 : Int?
        var result : Int?
        var op : Operator
        repeat {
            currentIndex = self.activeStack.peek()?.index ?? -1
            currentQuadruple = self.quadruples[currentIndex]
            print("Current qua \(currentIndex)")
            arg1 = Int(currentQuadruple.argument1 ?? "0")
            arg2  = Int(currentQuadruple.argument2 ?? "0")
            result = Int(currentQuadruple.result ?? "0")
            op = currentQuadruple.op
            
            
            switch op {
            case .sum, .minus, .multiply, .division, .modulo, .intDivision, .greaterThan, .lessThan, .greaterOrEqualThan, .lessOrEqualThan, .equal, .different, .and, .or:
                self.basicOperation(op: op, arg1: arg1, arg2: arg2, res: result)
                self.sigQuadruple(index: currentIndexStack() + 1)
            case .assign:
               
                do{
                    var (firstValue, firstType) = try self.virtualMemory.getInfoByAddress(address: arg1!)
                    var (resValue, resType) = try self.virtualMemory.getInfoByAddress(address: result!)

                    if(resType != .pointer){
                        resValue = result
                    }
//                    
                    if(firstType == .pointer){
                        firstValue = try self.virtualMemory.getInfoByAddress(address: unwrap(firstValue) as! Int).0
                    }
                    

                    try virtualMemory.insertValue(address: Int("\(resValue!)")!, value: unwrap(firstValue))
                }catch let error{
                    print(error.localizedDescription)
                }
                self.sigQuadruple(index: currentIndexStack() + 1)
            case .goto,.gotof,.gotot:
                brincoIndex(op: op, arg1: arg1, arg2: arg2, res: result)
                break
            case .read:
                self.sigQuadruple(index: currentIndexStack() + 1)
                break
            case .print:
                self.printStatement(res: result ?? 0)
                self.sigQuadruple(index: currentIndexStack() + 1)
                break
            case .noNil:
                self.sigQuadruple(index: currentIndexStack() + 1)
                break
            case .endFunc:
                endfunc()
                break
            case .era:
                eraStatement(res: currentQuadruple.result ?? "")
                break
            case .gosub:
                self.sigQuadruple(index: currentIndexStack() + 1)
                gosubStatement()
                break
            case .param:
                parameterStatement(arg1: arg1, res: result)
                self.sigQuadruple(index: currentIndexStack() + 1)
                break
            case .rtn:
                returnStatement(arg1: arg1, res: result)
                self.sigQuadruple(index: currentIndexStack() + 1)
                break
            case .vrf:
                self.sigQuadruple(index: currentIndexStack() + 1)
                break
            case .sumAd:
                self.sigQuadruple(index: currentIndexStack() + 1)
                break
            }
            //self.sigQuadruple(index: currentIndexStack() + 1)
        }while(currentIndex + 1 < self.quadruples.count)
        print("END")
    }
    
    func sigQuadruple(index: Int){
        self.activeStack.peek()?.index = index
    }
    
    func currentIndexStack() -> Int{
        guard let indexStack = self.activeStack.peek()?.index else {return 0}
        return indexStack
    }
    
    func printStatement(res: Int){
        do{
            guard let value = try self.virtualMemory.getInfoByAddress(address: res).0 else {return}
            print("\(value)")
        }
        catch let error{
            print(error)
        }
    }

    func eraStatement(res: String){
        let stack = ActivationRecord(functionSymbol: self.symbolTable.lookup(res)!)
        self.readyStack.push(stack)
        self.sigQuadruple(index: self.currentIndexStack() + 1)
    }
    
    func returnStatement(arg1: Int?, res: Int?){
        guard let arg1Address = arg1 else {return}
        guard let resAddress = res else {return}
        do{
            guard var (value,type) : (Any, TypeSymbol) = try self.virtualMemory.getInfoByAddress(address: arg1Address) as? (Any, TypeSymbol) else {return}
            try self.virtualMemory.insertValue(address: resAddress, value: unwrap(value))
        } catch let error{
            print(error)
        }
        
    }
    
    func parameterStatement(arg1: Int?, res: Int?){
        guard let arg1Address = arg1 else {return}
        let readyActivationRecord = self.readyStack.peek()!
        do{
            guard var (value,type) : (Any, TypeSymbol) = try self.virtualMemory.getInfoByAddress(address: arg1Address) as? (Any, TypeSymbol) else {return}
            
            guard let resAddress = res else {return}
            try readyActivationRecord.saveValue(address: resAddress, val: unwrap(value))
        }catch let error{
            print(error)
        }
    }
    
    func gosubStatement(){
        let readyActivationRecord = self.readyStack.pop()!
        self.activeStack.push(readyActivationRecord)
        virtualMemory.activeMemory = readyActivationRecord
    }
 
    
    func brincoIndex(op : Operator, arg1 : Int?, arg2: Int?, res: Int?){
        guard let resultAddress = res else {return}
        if(op == .goto){
            sigQuadruple(index: resultAddress)
        }else if (op == .gotof){
            goto(compareTo: false, arg1: arg1,  res: res)
        } else if (op == .gotot){
            goto(compareTo: true, arg1: arg1, res:res)
        }
    }
    
    func goto(compareTo: Bool, arg1: Int?, res: Int?){
        do{
            guard let arg1Address = arg1 else {return}
            guard var (value,type) : (Any, TypeSymbol) = try self.virtualMemory.getInfoByAddress(address: arg1Address) as? (Bool, TypeSymbol) else {return}
            
            if(type == .pointer){
                value = try self.virtualMemory.getInfoByAddress(address: value as! Int).0
            }
            let val = value as! Bool
            if(val == compareTo){
                guard let nextQuadrupleIndex : Int = res else {return}
                sigQuadruple(index: nextQuadrupleIndex)
            }else{
                sigQuadruple(index: currentIndexStack() + 1)
            }
        }catch let error{
            print(error)
        }
    }
    
    func endfunc(){
        self.activeStack.pop()
        guard let newActiveMemory = self.activeStack.peek() else{return}
        self.virtualMemory.activeMemory = newActiveMemory
    }
    
    func basicOperation(op : Operator, arg1 : Int?, arg2: Int?, res: Int?){
        
        //Operadores binarios
        do{
            var (firstValue, firstType) = try self.virtualMemory.getInfoByAddress(address: arg1!)
            if(firstType == .pointer){
                firstValue = try self.virtualMemory.getInfoByAddress(address: Int("\(firstValue!)")!).0
            }
            var (secondValue, secondType) = try self.virtualMemory.getInfoByAddress(address: arg2!)
            if(secondType == .pointer){
                secondValue = try self.virtualMemory.getInfoByAddress(address: Int("\(secondValue!)")!).0
            }
           // let typeSecond = type(of: secondValue)
//                  print(typeSecond)
            
            makeOp(op: op, first: firstValue!, second: secondValue!, res: res)

        }catch{
            
        }
       
        
    }
    
    
    func makeOp(op:Operator, first: Any, second : Any, res: Int?){
        
        let boolOperators: [Operator] = [.greaterThan, .lessThan, .greaterOrEqualThan, .lessOrEqualThan, .equal, .different, .and, .or]
        let boolNumericOperators: [Operator] = [.greaterThan, .lessThan, .greaterOrEqualThan, .lessOrEqualThan, .equal, .different]
        do{
            if let firstBool = first as? Bool, let secondBool = first as? Bool, (boolOperators.contains(op)) {
                    let r = boolOp(a: firstBool, b: secondBool, op: op)
                    try? virtualMemory.insertValue(address: res! , value: r)
            }
           
            if  (boolNumericOperators.contains(op)) {
                switch first {
                case let firstInt as Int:
                    switch second {
                    case let secondInt as Int:
                        let r = boolNumericOp(a: firstInt, b: secondInt, op: op)
                        try virtualMemory.insertValue(address: res! , value: r)
                    case let secondDouble as Double:
                        let r = boolNumericOp(a: Double(firstInt), b: secondDouble, op: op)
                        try virtualMemory.insertValue(address: res! , value: r)
                    case let secondFloat as Float:
                        let r = boolNumericOp(a: Float(firstInt), b: secondFloat, op: op)
                        try virtualMemory.insertValue(address: res! , value: r)
                    default:
                        break
                    }
                case let firstDouble as Double:
                    switch second {
                    case let secondInt as Int:
                        let r = boolNumericOp(a: firstDouble, b: Double(secondInt), op: op)
                        try virtualMemory.insertValue(address: res! , value: r)
                    case let secondDouble as Double:
                        let r = boolNumericOp(a: firstDouble, b: secondDouble, op: op)
                        try virtualMemory.insertValue(address: res! , value: r)
                    case let secondFloat as Float:
                        let r = boolNumericOp(a: firstDouble, b: Double(secondFloat), op: op)
                        try virtualMemory.insertValue(address: res! , value: r)
                    default:
                        break
                    }
                case let firstFloat as Float:
                    switch second {
                    case let secondInt as Int:
                        let r = boolNumericOp(a: firstFloat, b: Float(secondInt), op: op)
                        try virtualMemory.insertValue(address: res! , value: r)
                    case let secondDouble as Double:
                        let r = boolNumericOp(a: Double(firstFloat), b: secondDouble, op: op)
                        try virtualMemory.insertValue(address: res! , value: r)
                    case let secondFloat as Float:
                        let r = boolNumericOp(a: firstFloat, b: secondFloat, op: op)
                        try virtualMemory.insertValue(address: res! , value: r)
                    default:
                        break
                    }
                default:
                    break
                }
                return
            }
            
            switch first {
            case let firstInt as Int:
                switch second {
                case let secondInt as Int:
                    let r = aritOp(a: firstInt, b: secondInt, op: op)
                    try virtualMemory.insertValue(address: res! , value: r)
                case let secondDouble as Double:
                    let r = aritOp(a: Double(firstInt), b: secondDouble, op: op)
                    try virtualMemory.insertValue(address: res! , value: r)
                case let secondFloat as Float:
                    let r = aritOp(a: Float(firstInt), b: secondFloat, op: op)
                    try virtualMemory.insertValue(address: res! , value: r)
                default:
                    break
                }
            case let firstDouble as Double:
                switch second {
                case let secondInt as Int:
                    let r = aritOp(a: firstDouble, b: Double(secondInt), op: op)
                    try virtualMemory.insertValue(address: res! , value: r)
                case let secondDouble as Double:
                    let r = aritOp(a: firstDouble, b: secondDouble, op: op)
                    try virtualMemory.insertValue(address: res! , value: r)
                case let secondFloat as Float:
                    let r = aritOp(a: firstDouble, b: Double(secondFloat), op: op)
                    try virtualMemory.insertValue(address: res! , value: r)
                default:
                    break
                }
            case let firstFloat as Float:
                switch second {
                case let secondInt as Int:
                    let r = aritOp(a: firstFloat, b: Float(secondInt), op: op)
                    try virtualMemory.insertValue(address: res! , value: r)
                case let secondDouble as Double:
                    let r = aritOp(a: Double(firstFloat), b: secondDouble, op: op)
                    try virtualMemory.insertValue(address: res! , value: r)
                case let secondFloat as Float:
                    let r = aritOp(a: firstFloat, b: secondFloat, op: op)
                    try virtualMemory.insertValue(address: res! , value: r)
                default:
                    break
                }
            default:
                break
            }
            }catch let error{
                print(error.localizedDescription)
            }
        
    }
    
    func getContentAddressFromPointer(pointerAddress : Any)->Int?{
        do{
            let v = try virtualMemory.getInfoByAddress(address: Int("\(pointerAddress)")!).0
            return Int("\(v!)")
        }catch let error{
            print(error.localizedDescription)
            return nil
        }
    }
    
//    func rrr(type: TypeSymbol) -> Type{
//        
//    }

//    func getRes(first: (Any?, TypeSymbol), second: (Any?, TypeSymbol), op: Operator) -> Numeric?{
//        if first.1 == .integer{
//            let a = first.0 as! Int
//        }
//    }
//
    
    
    func greaterThan<T: Arithmetic>(_ a: T, _ b: T) -> Bool {
        return a > b;
    }
    
    func lessThan<T: Arithmetic>(_ a: T, _ b: T) -> Bool {
        return a < b;
    }
    
    func greaterOrEqualThan<T: Arithmetic>(_ a: T, _ b: T) -> Bool {
        return a >= b;
    }
    
    func lessOrEqualThan<T: Arithmetic>(_ a: T, _ b: T) -> Bool {
        return a <= b;
    }
    
    func different<T: Arithmetic>(_ a: T, _ b: T) -> Bool {
        return a != b;
    }
    
    func different(_ a: Bool, _ b: Bool) -> Bool {
        return a != b;
    }
    
    func equal<T: Arithmetic>(_ a: T, _ b: T) -> Bool {
        return a == b;
    }
    
    func equal(_ a: Bool, _ b: Bool) -> Bool {
        return a == b;
    }
    
    func and(_ a: Bool, _ b: Bool) -> Bool {
        return a && b;
    }
    
    func or(_ a: Bool, _ b: Bool) -> Bool {
        return a || b;
    }
    
    func add<T: Arithmetic>(a: T, b: T) -> T {
        return a + b
    }

    func substract<T: Arithmetic>(a: T, b: T) -> T {
        return a - b
    }

    func division<T: Arithmetic>(a: T, b: T) -> T {
        return a / b
    }
    
    func multiply<T: Arithmetic>(a: T, b: T) -> T {
        return a * b
    }
    func divisionInt<T: Arithmetic>(a: T, b: T) -> T {
        return (Int("\(a / b)") ?? 0) as! T
    }
    func mod<T: Arithmetic>(a: T, b: T) -> T {
        return ((a as! Float).truncatingRemainder(dividingBy: (b as! Float))) as! T
    }
    
    func aritOp<T: Arithmetic>(a:T, b:T, op: Operator) -> T{
        switch op {
        case .sum:
            return add(a: a, b: b)
        case .minus:
            return substract(a: a, b: b)
        case .multiply:
            return multiply(a: a, b: b)
        case .division:
            return division(a: a, b: b)
        case .modulo:
            return mod(a: a, b: b)
        case .intDivision:
            return divisionInt(a: a, b: b)
        default:
            return 0 as! T
        }
    }
    
    func boolNumericOp<T: Arithmetic>(a: T, b: T, op: Operator) -> Bool {
        switch op {
        case .greaterThan:
            return greaterThan(a, b)
        case .greaterOrEqualThan:
            return greaterOrEqualThan(a, b)
        case .lessThan:
            return lessThan(a, b)
        case .lessOrEqualThan:
            return lessOrEqualThan(a, b)
        case .equal:
            return equal(a, b)
        case .different:
            return different(a, b)
        default:
            return false
        }
    }
    
    func boolOp(a: Bool, b: Bool, op: Operator) -> Bool {
        switch op {
        case .equal:
            return equal(a, b)
        case .different:
            return different(a, b)
        case .and:
            return and(a, b)
        case .or:
            return or(a, b)
        default:
            return false
        }
    }
    
}

protocol Arithmetic: Comparable {
    static func +(lhs: Self, rhs: Self) -> Self
    static func -(lhs: Self, rhs: Self) -> Self
    static func *(lhs: Self, rhs: Self) -> Self
    static func /(lhs: Self, rhs: Self) -> Self
}

extension Int : Arithmetic {}
extension Int8 : Arithmetic {}
extension Int16 : Arithmetic {}
extension Int32 : Arithmetic {}
extension Int64 : Arithmetic {}

extension UInt8 : Arithmetic {}
extension UInt16 : Arithmetic {}
extension UInt32 : Arithmetic {}
extension UInt64 : Arithmetic {}

extension Float80 : Arithmetic {}
extension Float : Arithmetic {}
extension Double : Arithmetic {}


protocol BoolP {
    static func ==(_ lhs: Self, _ rhs: Self) -> Self
    static func !=(lhs: Self, rhs: Self) -> Self
}

extension Bool : BoolP {}


func add<T: Arithmetic>(a: T, b: T) -> T {
    return a + b
}


func unwrap<T>(_ any: T) -> Any
{
    let mirror = Mirror(reflecting: any)
    guard mirror.displayStyle == .optional, let first = mirror.children.first else {
        return any
    }
    return first.value
}
