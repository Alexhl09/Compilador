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
                    let v = try virtualMemory.getInfoByAddress(address: arg1!).0
                    try virtualMemory.insertValue(address: result!, value: v!)
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
            case .assign:
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
        }while(currentIndex < self.quadruples.count)
    }
    
    func basicOperation(op : Operator, arg1 : Int?, arg2: Int?, res: Int?){
        
        //Operadores binarios
        do{
            let firstValue = try self.virtualMemory.getInfoByAddress(address: arg1!)
            let secondValue = try self.virtualMemory.getInfoByAddress(address: arg2!)
            let typeSecond = type(of: secondValue)
                  print(typeSecond)
            
            
            switch op {
            case .sum:
                print(type(of: firstValue.0))
                makeOp(+, first: firstValue.0!, second: secondValue.0!, res: res)
               
               
                break
            case .minus:
                makeOp(-, first: firstValue.0!, second: secondValue.0!, res: res)
                break
            case .multiply:
                makeOp(*, first: firstValue.0!, second: secondValue.0!, res: res)
                break
            case .division:
                makeOp(/, first: firstValue.0!, second: secondValue.0!, res: res)
                break
            case .modulo:
                makeOp(%, first: firstValue.0!, second: secondValue.0!, res: res)
                break
            case .intDivision:
                makeOp(/, first: firstValue.0!, second: secondValue.0!, res: res)
                break
            default:
                break
            }
        }catch{
            
        }
       
        
    }
    
    
    func makeOp(_ fun:((Int, Int) -> Int), first: Any, second : Any, res: Int?){
        do{
            switch first {
            case let firstInt as Int:
                switch second {
                case let secondInt as Int:
                    let r = firstInt + secondInt
                    try virtualMemory.insertValue(address: res! , value: r)
                case let secondDouble as Double:
                    let r = Double(firstInt) + secondDouble
                    try virtualMemory.insertValue(address: res! , value: r)
                case let secondFloat as Float:
                    let r = Float(firstInt) + secondFloat
                    try virtualMemory.insertValue(address: res! , value: r)
                default:
                    break
                }
            case let firstDouble as Double:
                switch second {
                case let secondInt as Int:
                    let r = firstDouble + Double(secondInt)
                    try virtualMemory.insertValue(address: res! , value: r)
                case let secondDouble as Double:
                    let r = firstDouble + secondDouble
                    try virtualMemory.insertValue(address: res! , value: r)
                case let secondFloat as Float:
                    let r = firstDouble + Double(secondFloat)
                    try virtualMemory.insertValue(address: res! , value: r)
                default:
                    break
                }
            case let firstFloat as Float:
                switch second {
                case let secondInt as Int:
                    let r = firstFloat + Float(secondInt)
                    try virtualMemory.insertValue(address: res! , value: r)
                case let secondDouble as Double:
                    let r = Double(firstFloat) + secondDouble
                    try virtualMemory.insertValue(address: res! , value: r)
                case let secondFloat as Float:
                    let r = firstFloat + secondFloat
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
    
//    func rrr(type: TypeSymbol) -> Type{
//        
//    }

//    func getRes(first: (Any?, TypeSymbol), second: (Any?, TypeSymbol), op: Operator) -> Numeric?{
//        if first.1 == .integer{
//            let a = first.0 as! Int
//        }
//    }
//    
    
    
}

