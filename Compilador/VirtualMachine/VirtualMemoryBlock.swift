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
    
    
    init(infoStack: InfoStack, sizeBlock : Int, kind : SegmentType)
    {
        self.sizeBlock = sizeBlock
        self.kind = kind
        
        self.intBlock = Array.init(repeating: 0, count: infoStack.numberInts)
        self.floatBlock = Array.init(repeating: 0.0, count: infoStack.numberFloats)
        self.boolBlock = Array.init(repeating: false, count: infoStack.numberBools)
        self.doubleBlock = Array.init(repeating: 0.0, count: infoStack.numberDoubles)
        self.charBlock = Array.init(repeating: Character.init(""), count: infoStack.numberChars)
        
    }
    
    
    func realMemoryAddress(address : Int) throws ->  (address: Int, type: TypeSymbol)  {
        switch self.kind {
        case .Global:
            switch address {
                case 0..<1000:
                    return (address: address, type: .integer)
                case 1000..<2000:
                    return (address: address - 1000, type: .float)
                case 2000..<3000:
                    return (address: address - 2000, type: .double)
                case 3000..<4000:
                    return (address: address - 3000, type: .boolean)
                case 4000..<5000:
                    return (address: address - 4000, type: .char)
                default:
                    throw ErrorVirtualMemory.BadAccessMemory
            }
        case .Local:
            switch address {
                case 5000..<6000:
                    return (address: address - 5000, type: .integer)
                case 6000..<7000:
                    return (address: address - 6000, type: .float)
                case 7000..<8000:
                    return (address: address - 7000, type: .double)
                case 8000..<9000:
                    return (address: address - 8000, type: .boolean)
                case 9000..<10000:
                    return (address: address - 9000, type: .char)
                default:
                    throw ErrorVirtualMemory.BadAccessMemory
            }
        case .Temporal:
            switch address {
                case 10000..<11000:
                    return (address: address - 10000, type: .integer)
                case 11000..<12000:
                    return (address: address - 11000, type: .float)
                case 12000..<13000:
                    return (address: address - 12000, type: .double)
                case 13000..<14000:
                    return (address: address - 13000, type: .boolean)
                case 14000..<15000:
                    return (address: address - 14000, type: .char)
                default:
                    throw ErrorVirtualMemory.BadAccessMemory
            }
        case .Constant:
            switch address {
                case 15000..<16000:
                    return (address: address - 15000, type: .integer)
                case 16000..<17000:
                    return (address: address - 16000, type: .float)
                case 17000..<18000:
                    return (address: address - 17000, type: .double)
                case 18000..<19000:
                    return (address: address - 18000, type: .boolean)
                case 19000..<20000:
                    return (address: address - 19000, type: .char)
                default:
                    throw ErrorVirtualMemory.BadAccessMemory
            }
        }
    }
    
    func useMemoryInteger(address: Int, value: Int) throws {
        do {
            self.intBlock[address] = value
        }catch(let error){
            throw ErrorVirtualMemory.BadAccessMemory
        }
    }
    
    func useMemoryFloat(address: Int, value : Float) throws {
        do {
            self.floatBlock[address] = value
        }catch(let error){
            throw ErrorVirtualMemory.BadAccessMemory
        }
    }
    
    func useMemoryBool(address: Int, value: Bool) throws {
        do {
            self.boolBlock[address] = value
        }catch(let error){
            throw ErrorVirtualMemory.BadAccessMemory
        }
    }
    
    func useMemoryDouble(address: Int, value: Double) throws {
        do {
            self.doubleBlock[address] = value
        }catch(let error){
            throw ErrorVirtualMemory.BadAccessMemory
        }
    }
    
    func useMemoryChar(address: Int, value: Character) throws {
        do {
            self.charBlock[address] = value
        }catch(let error){
            throw ErrorVirtualMemory.BadAccessMemory
        }
    }
    
    func getInfoInt(address : Int) -> Int {
        return self.intBlock[address]
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
            break
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
            break
        case .integer:
            try self.useMemoryInteger(address: address, value: value as! Int)
        case .string:
            break
        case .boolean:
            try self.useMemoryBool(address: address, value: value as! Bool)
        case .float:
            try self.useMemoryFloat(address: address, value: value as! Float)
        case .char:
            try self.useMemoryChar(address: address, value: value as! Character)
        case .double:
            try self.useMemoryDouble(address: address, value: value as! Double)
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
