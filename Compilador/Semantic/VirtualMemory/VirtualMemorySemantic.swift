//
//  VirtualMemory.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 15/10/21.
//

import Foundation

class VirtualMemorySemantic {
    let maxSize: Int = 20000
    var sizeByBlock : Int
    var globalBlock : VirtualMemoryBlockSemantic
    var localBlock : VirtualMemoryBlockSemantic
    var tempBlock : VirtualMemoryBlockSemantic
    var constantBlock : VirtualMemoryBlockSemantic
    
    init(){
        self.sizeByBlock = maxSize / 4
        self.globalBlock = VirtualMemoryBlockSemantic(sizeBlock: sizeByBlock, initialAddress: 0)
        self.localBlock = VirtualMemoryBlockSemantic(sizeBlock: sizeByBlock, initialAddress: sizeByBlock)
        self.tempBlock = VirtualMemoryBlockSemantic(sizeBlock: sizeByBlock, initialAddress: sizeByBlock * 2)
        self.constantBlock = VirtualMemoryBlockSemantic(sizeBlock: sizeByBlock, initialAddress: sizeByBlock * 3)
    }
    
    func newGlobalAddress(type: TypeSymbol) -> Int{
        return globalBlock.newAddress(type: type)
    }
    
    func newLocalAdress(type: TypeSymbol, sizeToReserve : Int = 1) -> Int {
        return localBlock.newAddress(type: type, size: sizeToReserve)
    }
    
    func newTemporalAddress(type: TypeSymbol, sizetoReserve:Int = 1) -> Int {
        return tempBlock.newAddress(type: type, size: sizetoReserve)
    }
    
    func newConstantAddress(type: TypeSymbol, sizeToReserve:Int = 1) -> Int {
        return constantBlock.newAddress(type: type, size: sizeToReserve)
    }
    
}

struct SemiBlockMemory {
    var initialAddress, myAddress, lastAddress : Int
    
    init(initialAddress : Int, sizeSemiBlock: Int) {
        self.initialAddress = initialAddress
        self.myAddress = initialAddress
        self.lastAddress = initialAddress + sizeSemiBlock
    }
    
    mutating func newAddressInMemory(sizeToReserve: Int) -> Int{
        let newAddress = self.myAddress
        self.myAddress += sizeToReserve
        return newAddress
    }
    
    func size() -> Int {
        return self.myAddress - self.initialAddress
    }
}


class VirtualMemoryBlockSemantic {
    var sizeBlock : Int
    var initialAddress: Int
    var intBlocks : SemiBlockMemory
    var floatsBlocks : SemiBlockMemory
    var boolBlocks : SemiBlockMemory
    var doubleBlocks : SemiBlockMemory
    
    

    
    init(sizeBlock: Int, initialAddress: Int){
        self.sizeBlock = sizeBlock
        self.initialAddress = initialAddress
        self.intBlocks = SemiBlockMemory(initialAddress: initialAddress, sizeSemiBlock: sizeBlock)
        self.floatsBlocks = SemiBlockMemory(initialAddress: initialAddress + (sizeBlock), sizeSemiBlock: sizeBlock)
        self.doubleBlocks = SemiBlockMemory(initialAddress: initialAddress + (sizeBlock * 2), sizeSemiBlock: sizeBlock)
        self.boolBlocks = SemiBlockMemory(initialAddress: initialAddress + (sizeBlock * 3), sizeSemiBlock: sizeBlock)
    }
    
    func newIntAddress(sizeToReserve: Int) -> Int {
        return self.intBlocks.newAddressInMemory(sizeToReserve: sizeToReserve)
    }
    func newFloatsAddress(sizeToReserve: Int) -> Int {
        return self.floatsBlocks.newAddressInMemory(sizeToReserve: sizeToReserve)
    }
    func newDoubleAddress(sizeToReserve: Int) -> Int {
        return self.doubleBlocks.newAddressInMemory(sizeToReserve: sizeToReserve)
    }
    func newBoolAddress(sizeToReserve: Int) -> Int {
        return self.boolBlocks.newAddressInMemory(sizeToReserve: sizeToReserve)
    }
    
    func newAddress(type: TypeSymbol, size : Int = 1) -> Int {
        switch type {
        case .void:
            break
        case .integer:
            return newIntAddress(sizeToReserve: size)
        case .string:
            break
        case .boolean:
            return newBoolAddress(sizeToReserve: size)
        case .float:
            return newFloatsAddress(sizeToReserve: size)
        case .char:
            break
        case .double:
            return newDoubleAddress(sizeToReserve: size)
        case .Integer:
            break
        case .String:
            break
        case .ID:
            break
        }
        return -1
    }
    
}
