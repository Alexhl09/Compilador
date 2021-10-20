//
//  VirtualMemoryStack.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 15/10/21.
//

import Foundation


class VirtualMemoryBlock{
    var sizeBlock : Int
   
    var kind : SegmentType
    
    var intBlock : [Int]
    var floatBlock : [Float]
    var boolBlock : [Bool]
    var charBlock : [Character]
    var doubleBlock : [Double]
    var voidBlock : [Any]
    
    
    init(infoStack: InfoStack, sizeBlock : Int, kind : SegmentType)
    {
        self.sizeBlock = sizeBlock
        self.kind = kind
        
        self.intBlock = Array.init(repeating: 0, count: infoStack.numberInts)
        self.floatBlock = Array.init(repeating: 0.0, count: infoStack.numberFloats)
        self.boolBlock = Array.init(repeating: false, count: infoStack.numberBools)
        self.doubleBlock = Array.init(repeating: 0.0, count: infoStack.numberDoubles)
        self.charBlock = Array.init(repeating: Character.init(""), count: infoStack.numberChars)
        self.voidBlock = Array.init(repeating: 0, count: infoStack.numberVoids)
    }
    
    
    func realMemoryAddress(address : Int) throws ->  (address: Int, type: TypeSymbol)  {
        switch self.kind {
        case .Global:
            switch address {
                case 0..<1000:
                    return (address: address, type: .integer)
                case 1000..<2000:
                    return (address: address - 1000, type: .void)
                case 2000..<3000:
                    return (address: address - 2000, type: .double)
                case 3000..<4000:
                    return (address: address - 3000, type: .boolean)
                case 4000..<5000:
                    return (address: address - 4000, type: .float)
                case 5000..<6000:
                    return (address: address - 5000, type: .char)
                default:
                    throw ErrorVirtualMemory.BadAccessMemory
            }
        case .Local:
            switch address {
                case 6000..<7000:
                    return (address: address - 6000, type: .integer)
                case 7000..<8000:
                    return (address: address - 7000, type: .void)
                case 8000..<9000:
                    return (address: address - 8000, type: .double)
                case 9000..<10000:
                    return (address: address - 9000, type: .boolean)
                case 10000..<11000:
                    return (address: address - 10000, type: .float)
                case 11000..<12000:
                    return (address: address - 11000, type: .char)
                default:
                    throw ErrorVirtualMemory.BadAccessMemory
            }
            
        case .Temporal:
            
            switch address {
                case 12000..<13000:
                    return (address: address - 12000, type: .integer)
                case 13000..<14000:
                    return (address: address - 13000, type: .void)
                case 14000..<15000:
                    return (address: address - 14000, type: .double)
                case 15000..<16000:
                    return (address: address - 15000, type: .boolean)
                case 16000..<17000:
                    return (address: address - 16000, type: .float)
                case 17000..<18000:
                    return (address: address - 17000, type: .char)
                default:
                    throw ErrorVirtualMemory.BadAccessMemory
            }
           
        case .Constant:
            switch address {
                case 18000..<19000:
                    return (address: address - 18000, type: .integer)
                case 19000..<20000:
                    return (address: address - 19000, type: .void)
                case 20000..<21000:
                    return (address: address - 20000, type: .double)
                case 21000..<22000:
                    return (address: address - 21000, type: .boolean)
                case 22000..<23000:
                    return (address: address - 22000, type: .float)
                case 23000..<24000:
                    return (address: address - 23000, type: .char)
                default:
                    throw ErrorVirtualMemory.BadAccessMemory
            }
        }
    }
    
    func useMemoryInteger(address: Int, value: Int) {
        self.intBlock[address] = value
    }
    
    func useMemoryVoid(address: Int, value: Any) {
        self.voidBlock[address] = value
    }
    
    func useMemoryFloat(address: Int, value : Float) {
        self.floatBlock[address] = value
    }
    
    func useMemoryBool(address: Int, value: Bool) {
        self.boolBlock[address] = value
    }
    
    func useMemoryDouble(address: Int, value: Double) {
        self.doubleBlock[address] = value
    }
    
    func useMemoryChar(address: Int, value: Character) {
        self.charBlock[address] = value
    }
    
    func getInfoInt(address : Int) -> Int {
        return self.intBlock[address]
    }
    
    func getInfoVoid(address : Int) -> Any {
        return self.voidBlock[address]
    }
    
    func getInfoFloat(address: Int) -> Float {
        return self.floatBlock[address]
    }
    
    func getInfoDouble(address: Int) -> Double {
        return self.doubleBlock[address]
    }
    
    func getInfoBool(address : Int) -> Bool {
        return self.boolBlock[address]
    }
    
    func getInfoChar(address : Int) -> Character {
        return self.charBlock[address]
    }
    
    func readInfo(address : Int) throws -> Any {
        
        let (myAddress, type) = try realMemoryAddress(address: address)
       
        switch type {
        case .void:
            return self.getInfoVoid(address: myAddress)
        case .integer:
            return self.getInfoInt(address: myAddress)
        case .string:
            break
        case .boolean:
            return self.getInfoBool(address: myAddress)
        case .float:
            return self.getInfoFloat(address: myAddress)
        case .char:
            break
        case .double:
            return self.getInfoDouble(address: myAddress)
        case .Integer:
            break
        case .String:
            break
        case .ID:
            break
        }
        return -1
    }
    
    func insertInMemory(address : Int, value : Any) throws {
        let (myAddress, type) = try realMemoryAddress(address: address)
        switch type {
        case .void:
             self.useMemoryVoid(address: address, value: value)
            break
        case .integer:
             self.useMemoryInteger(address: address, value: value as! Int)
        case .string:
            break
        case .boolean:
             self.useMemoryBool(address: address, value: value as! Bool)
        case .float:
             self.useMemoryFloat(address: address, value: value as! Float)
        case .char:
             self.useMemoryChar(address: address, value: value as! Character)
        case .double:
             self.useMemoryDouble(address: address, value: value as! Double)
        case .Integer:
            break
        case .String:
            break
        case .ID:
            break
        }
        
    }
    
}



enum ErrorVirtualMemory : Error {
    case BadAccessMemory
    case NotImplemented
}
