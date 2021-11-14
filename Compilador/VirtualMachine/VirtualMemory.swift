//
//  VirtualMemory.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 15/10/21.
//

import Foundation



class InfoStack {
    var numberInts, numberFloats, numberBools, numberChars, numberDoubles, numberVoids, numberStrings, numberPointers : Int
    
    init() {
        numberInts = 0
        numberFloats = 0
        numberBools = 0
        numberChars = 0
        numberDoubles = 0
        numberVoids = 0
        numberStrings = 0
        numberPointers = 0
    }
}



class VirtualMemory {
    let memorySize : Int = 28000
    let memoryForEachStack : Int
    var globalStack : VirtualMemoryBlock
    var constantsStack : VirtualMemoryBlock
    var activeMemory : ActivationRecord

    init(globalInfo : InfoStack, constantsInfo : InfoStack, activeFunc : ActivationRecord, constants: [String: Int]){
        
        self.memoryForEachStack = memorySize / 4
        
        self.globalStack = VirtualMemoryBlock(infoStack: globalInfo, sizeBlock: memoryForEachStack,  kind: .Global)
        self.constantsStack = VirtualMemoryBlock(infoStack: constantsInfo, sizeBlock: memoryForEachStack, kind: .Constant)
        self.activeMemory = activeFunc
        
        for constant in constants {
            let address : Int = constant.value
            let value : Any = constant.key
            do{
                try self.constantsStack.insertInMemory(address: address, value: value)
            }catch let error{
                print(error.localizedDescription)
            }
        }
    }
    
    
    func getInfoByAddress(address: Int) throws -> (Any?, TypeSymbol){
        do {
            switch try getType(address: address) {
            case .Global:
                return try self.globalStack.readInfo(address: address)
            case .Local:
                return try self.activeMemory.localMemory.readInfo(address: address)
            case .Temporal:
                return try self.activeMemory.temporalMemory.readInfo(address: address)
            case .Constant:
                return try self.constantsStack.readInfo(address: address)
            }
        }catch(let error){
            throw error
        }
    }
    
    func insertValue(address: Int, value : Any)  throws  {
        do{
            switch try getType(address: address){
            case .Global:
                try self.globalStack.insertInMemory(address: address, value: value)
            case .Local:
                try self.activeMemory.localMemory.insertInMemory(address: address, value: value)
              //  return self.globalStack.readInfo(address: address)
                break
            case .Temporal:
                try self.activeMemory.temporalMemory.insertInMemory(address: address, value: value)
               // return self.globalStack.readInfo(address: address)
                break
            case .Constant:
                try self.constantsStack.insertInMemory(address: address, value: value)
            }
        }catch(let error){
            throw error
        }
    }
        
    
    
    func getType(address : Int) throws -> SegmentType {
        switch address {
            case 0..<self.memoryForEachStack:
            return .Global
            case self.memoryForEachStack..<self.memoryForEachStack*2:
            return .Local
            case self.memoryForEachStack*2..<self.memoryForEachStack*3:
            return .Temporal
            case self.memoryForEachStack*3..<self.memorySize:
            return .Constant
        default:
            throw ErrorVirtualMemory.BadAccessMemory
        }
    }
}
