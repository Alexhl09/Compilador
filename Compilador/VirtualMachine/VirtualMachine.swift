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
    var virtualMemory : VirtualMemory
    
    init(quadruples: [Quadruple], constants: [String: Int], symbolTable: SymbolTable, globalMemory : InfoStack, constantsInfo: InfoStack){
        self.quadruples = quadruples
        self.constants = constants
        self.symbolTable = symbolTable
        let firstInstruction = quadruples[0]
        let firstStack = ActivationRecord(quadrupleIndex: Int(firstInstruction.result!) ?? 0, functionSymbol: self.symbolTable.lookup("main")!)
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
            
            arg1 = Int(currentQuadruple.argument1 ?? "0")
            arg2  = Int(currentQuadruple.argument2 ?? "0")
            result = Int(currentQuadruple.result ?? "0")
            op = currentQuadruple.op
            
            
            switch op {
            case .sum, .minus, .multiply, .division, .modulo, .intDivision:
                self.basicOperation(op: op, arg1: arg1, arg2: arg2, res: result)
            case .assign:
               
                do{
                    var (firstValue, firstType) = try self.virtualMemory.getInfoByAddress(address: arg1!)
                    var (resValue, resType) = try self.virtualMemory.getInfoByAddress(address: result!)

                    if(resType != .pointer){
                        resValue = result
                    }
                    try virtualMemory.insertValue(address: Int("\(resValue!)")!, value: firstValue!)
                }catch let error{
                    print(error.localizedDescription)
                }
               
            case .greaterThan:
                break
            case .lessThan:
                break
            case .greaterOrEqualThan:
                break
            case .lessOrEqualThan:
                break
            case .equal:
                break
            case .different:
                break
            case .and:
                break
            case .or:
                break
            case .goto:
                break
            case .gotof:
                break
            case .gotot:
                break
            case .read:
                break
            case .print:
                break
            case .noNil:
                break
            case .endFunc:
                break
            case .era:
                break
            case .gosub:
                break
            case .param:
                break
            case .rtn:
                break
            case .vrf:
                break
            case .sumAd:
                break
            }
            self.activeStack.peek()?.index += 1
        }while(currentIndex + 1 < self.quadruples.count)
        print("")
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
            let typeSecond = type(of: secondValue)
                  print(typeSecond)
            
            makeOp(op: op, first: firstValue!, second: secondValue!, res: res)

//            switch op {
//            case .sum:
//                print(type(of: firstValue!))
//                makeOp(add, first: 1, second: 2, res: 3)
//                makeOp(add, first: firstValue!, second: secondValue!, res: res)
//                break
//            case .minus:
//                makeOp(substract, first: firstValue!, second: secondValue!, res: res)
//                break
//            case .multiply:
//                makeOp(multiply, first: firstValue!, second: secondValue!, res: res)
//                break
//            case .division:
//                makeOp(division, first: firstValue!, second: secondValue!, res: res)
//                break
//            case .modulo:
//                makeOp(division, first: firstValue!, second: secondValue!, res: res)
//                break
//            case .intDivision:
//                makeOp(divisionInt, first: firstValue!, second: secondValue!, res: res)
//                break
//            default:
//                break
//            }
        }catch{
            
        }
       
        
    }
    
    
    func makeOp(op:Operator, first: Any, second : Any, res: Int?){
 
        do{
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
    
}

protocol Arithmetic {
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


func add<T: Arithmetic>(a: T, b: T) -> T {
    return a + b
}
