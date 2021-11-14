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
    var pointerBlock : [Int]
    
    
    init(infoStack: InfoStack, sizeBlock : Int, kind : SegmentType)
    {
        self.sizeBlock = sizeBlock
        self.kind = kind
        self.intBlock = Array.init(repeating: 0, count: infoStack.numberInts)
        self.floatBlock = Array.init(repeating: 0.0, count: infoStack.numberFloats)
        self.boolBlock = Array.init(repeating: false, count: infoStack.numberBools)
        self.doubleBlock = Array.init(repeating: 0.0, count: infoStack.numberDoubles)
        self.charBlock = Array.init(repeating: Character.init("-"), count: infoStack.numberChars)
        self.voidBlock = Array.init(repeating: 0, count: infoStack.numberVoids)
        self.pointerBlock = Array.init(repeating: 0, count: infoStack.numberPointers)
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
                case 6000..<7000:
                    return (address: address - 6000, type: .pointer)
                default:
                    throw ErrorVirtualMemory.BadAccessMemory
            }
        case .Local:
            switch address {
                case 7000..<8000:
                    return (address: address - 7000, type: .integer)
                case 8000..<9000:
                    return (address: address - 8000, type: .void)
                case 9000..<10000:
                    return (address: address - 9000, type: .double)
                case 10000..<11000:
                    return (address: address - 10000, type: .boolean)
                case 11000..<12000:
                    return (address: address - 11000, type: .float)
                case 12000..<13000:
                    return (address: address - 12000, type: .char)
                case 13000..<14000:
                    return (address: address - 13000, type: .pointer)
                default:
                    throw ErrorVirtualMemory.BadAccessMemory
            }
            
        case .Temporal:
            
            switch address {
                case 14000..<15000:
                    return (address: address - 14000, type: .integer)
                case 15000..<16000:
                    return (address: address - 15000, type: .void)
                case 16000..<17000:
                    return (address: address - 16000, type: .double)
                case 17000..<18000:
                    return (address: address - 17000, type: .boolean)
                case 18000..<19000:
                    return (address: address - 18000, type: .float)
                case 19000..<20000:
                    return (address: address - 19000, type: .char)
                case 20000..<21000:
                    return (address: address - 20000, type: .pointer)
                default:
                    throw ErrorVirtualMemory.BadAccessMemory
            }
           
        case .Constant:
            switch address {
                case 21000..<22000:
                    return (address: address - 21000, type: .integer)
                case 22000..<23000:
                    return (address: address - 22000, type: .void)
                case 23000..<24000:
                    return (address: address - 23000, type: .double)
                case 24000..<25000:
                    return (address: address - 24000, type: .boolean)
                case 25000..<26000:
                    return (address: address - 25000, type: .float)
                case 26000..<27000:
                    return (address: address - 26000, type: .char)
                case 27000..<28000:
                    return (address: address - 27000, type: .pointer)
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
    
    func useMemoryPointer(address: Int, value: Int) {
        self.pointerBlock[address] = value
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
    
    func getInfoPointer(address : Int) -> Int {
        return self.pointerBlock[address]
    }
    
    func readInfo(address : Int) throws -> (Any?, TypeSymbol) {
        
        let (myAddress, type) = try realMemoryAddress(address: address)
       
        switch type {
        case .void:
            return (self.getInfoVoid(address: myAddress),type)
        case .integer:
            return (self.getInfoInt(address: myAddress),type)
        case .string:
            break
        case .boolean:
            return (self.getInfoBool(address: myAddress),type)
        case .float:
            return (self.getInfoFloat(address: myAddress),type)
        case .char:
            return (self.getInfoChar(address: myAddress),type)
        case .double:
            return (self.getInfoDouble(address: myAddress),type)
        case .Integer:
            break
        case .String:
            break
        case .ID:
            break
        case .pointer:
            return (self.getInfoPointer(address: myAddress),type)
        }
        return (nil, .void)
    }
    
    func insertInMemory(address : Int, value : Any) throws {
        var x = 0
        defer{
            if(x == 1){
                print(address)
                print(value)
                print("OOOPS")
            }
        }
        let (myAddress, type) = try realMemoryAddress(address: address)
        switch type {
        case .void:
             self.useMemoryVoid(address: myAddress, value: value)
            break
        case .integer:
            guard let v =  Int("\(value)") else {print("E"); x = 1; return}
             self.useMemoryInteger(address: myAddress, value: v)
        case .string:
            break
        case .boolean:
            if value is Bool{
                 self.useMemoryBool(address: myAddress, value: value as! Bool)
            }else if value is Int{
                if((value as! Int) == 0){
                    self.useMemoryBool(address: myAddress, value: false)
                }else{
                    self.useMemoryBool(address: myAddress, value: true)
                }
            }else{
                guard let v =  Bool("\(value)") else {print("E"); x = 1; return}
                 self.useMemoryBool(address: myAddress, value: v)
            }
            
        case .float:
            guard let v =  Float("\(value)") else {print("E");  x = 1; return}
             self.useMemoryFloat(address: myAddress, value: v)
        case .char:
            if value is Character{
                 self.useMemoryChar(address: myAddress, value: value as! Character)
            }else if value is String{
                guard let ascii =  value as? String else {print("E");  x = 1; return}
                guard let c =  ascii.first else {print("E");  x = 1; return}
                self.useMemoryChar(address: myAddress, value: c)
           }
            else{
                guard let v =  Int("\(value)") else {print("E");  x = 1; return}
                let c = Character(UnicodeScalar(v)!)
                 self.useMemoryChar(address: myAddress, value: c)
            }
            
        case .double:
            guard let v =  Double("\(value)") else {print("E");  x = 1; return}
             self.useMemoryDouble(address: myAddress, value: v)
        case .Integer:
            break
        case .String:
            break
        case .ID:
            break
        case .pointer:
            guard let v =  Int("\(value)") else {print("E"); x = 1; return}
            self.useMemoryPointer(address: myAddress, value: v)
        }
        
        
    }
    
}



enum ErrorVirtualMemory : Error {
    case BadAccessMemory
    case NotImplemented
}
