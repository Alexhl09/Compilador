//
//  VirtualMemory.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 15/10/21.
//

import Foundation

/**
 
 TOTAL SIZE: 20, 000
 
 Global Stack:
    Size: 5,000
 -----------------------------------------------------
 |      INTS
 ....................................................................................................................
 |      FLOATS
 ....................................................................................................................
 |      DOUBLES
 ....................................................................................................................
 |      BOOLS
 ....................................................................................................................
 |      CHAR
 -----------------------------------------------------
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 Local Stack:
    Size: 5,000
 -----------------------------------------------------
 |      INTS
 ....................................................................................................................
 |      FLOATS
 ....................................................................................................................
 |      DOUBLES
 ....................................................................................................................
 |      BOOLS
 ....................................................................................................................
 |      CHAR
 -----------------------------------------------------
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 Temp Stack:
    Size: 5,000
 -----------------------------------------------------
 |      INTS
 ....................................................................................................................
 |      FLOATS
 ....................................................................................................................
 |      DOUBLES
 ....................................................................................................................
 |      BOOLS
 ....................................................................................................................
 |      CHAR
 -----------------------------------------------------
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 Constantes Stack:
    Size: 5,000
 -----------------------------------------------------
 |      INTS
 ....................................................................................................................
 |      FLOATS
 ....................................................................................................................
 |      DOUBLES
 ....................................................................................................................
 |      BOOLS
 ....................................................................................................................
 |      CHAR
 -----------------------------------------------------
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 */

struct InfoStack {
    let numberInts, numberFloats, numberBools, numberChars, numberDoubles : Int
}



class VirtualMemory {
    let memorySize : Int = 20000
    let memoryForEachStack : Int
    var globalStack : VirtualMemoryBlock
    //var localStack : VirtualMemoryBlock
    var constantsStack : VirtualMemoryBlock

    init(globalInfo : InfoStack, constantsInfo : InfoStack){
        
        self.memoryForEachStack = memorySize / 4
        
        self.globalStack = VirtualMemoryBlock(infoStack: globalInfo, sizeBlock: memoryForEachStack,  kind: .Global)
        self.constantsStack = VirtualMemoryBlock(infoStack: constantsInfo, sizeBlock: memoryForEachStack, kind: .Constant)
       
    }
    
    
    func getInfoByAddress(address: Int) throws -> Any{
        do {
            switch try getType(address: address) {
            case .Global:
                return try self.globalStack.readInfo(address: address)
            case .Local:
              //  return self.globalStack.readInfo(address: address)
                break
            case .Temporal:
               // return self.globalStack.readInfo(address: address)
                break
            case .Constant:
                return try self.constantsStack.readInfo(address: address)
            }
        }catch(let error){
            throw error
        }
        return -1 
    }
    
    func insertValue(address: Int, value : Any)  throws  {
        do{
            switch try getType(address: address){
            case .Global:
                try self.globalStack.insertInMemory(address: address, value: value)
            case .Local:
              //  return self.globalStack.readInfo(address: address)
                break
            case .Temporal:
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
