//
//  VirtualMemory.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 15/10/21.
//

import Foundation

class VirtualMemorySemantic : CustomStringConvertible {
    let maxSize: Int = 28000
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
    
    func newGlobalAddress(type: TypeSymbol, size : Int) -> Int{
        return globalBlock.newAddress(type: type, size: size)
    }
    
    func newLocalAdress(type: TypeSymbol, sizeToReserve:Int) -> Int {
        return localBlock.newAddress(type: type, size: sizeToReserve)
    }
    
    func newTemporalAddress(type: TypeSymbol, sizetoReserve:Int = 1) -> Int {
        return tempBlock.newAddress(type: type, size: sizetoReserve)
    }
    
    func newConstantAddress(type: TypeSymbol, sizeToReserve:Int ) -> Int {
        return constantBlock.newAddress(type: type, size: sizeToReserve)
    }
    
    func removeLocalAndTemporalMemory(){
        self.localBlock = VirtualMemoryBlockSemantic(sizeBlock: sizeByBlock, initialAddress: sizeByBlock)
        self.tempBlock = VirtualMemoryBlockSemantic(sizeBlock: sizeByBlock, initialAddress: sizeByBlock * 2)
    }
    
    
    public var description: String {
        return
    """
    
    ------------------------------------------------------------------
    |   MEMORY SIZE:\n \(maxSize) Unidades
    |   SIZE PER BLOCK:\n \(sizeByBlock) Unidades
    |   
    |   GLOBAL BLOCK:\n \(globalBlock.description)
    |
    |   LOCAL BLOCK:\n \(localBlock.description)
    |
    |   TEMP BLOCK:\n \(tempBlock.description)
    |
    |   CONSTANT BLOCK:\n \(constantBlock.description)
    ------------------------------------------------------------------
    """
        
    }
    
}



class VirtualMemoryBlockSemantic : CustomStringConvertible {
    var sizeBlock : Int
    var initialAddress: Int
    var intBlocks : SemiBlockMemory
    var voidBlocks : SemiBlockMemory
    var boolBlocks : SemiBlockMemory
    var doubleBlocks : SemiBlockMemory
    var floatBlocks : SemiBlockMemory
    var charBlocks : SemiBlockMemory
    var pointerBlocks : SemiBlockMemory
    
    
    init(sizeBlock: Int, initialAddress: Int){
        self.sizeBlock = sizeBlock / 7
        self.initialAddress = initialAddress
        self.intBlocks = SemiBlockMemory(initialAddress: initialAddress, sizeSemiBlock: self.sizeBlock)
        self.voidBlocks = SemiBlockMemory(initialAddress: initialAddress + (self.sizeBlock), sizeSemiBlock: self.sizeBlock)
        self.doubleBlocks = SemiBlockMemory(initialAddress: initialAddress + (self.sizeBlock * 2), sizeSemiBlock: self.sizeBlock)
        self.boolBlocks = SemiBlockMemory(initialAddress: initialAddress + (self.sizeBlock * 3), sizeSemiBlock: self.sizeBlock)
        self.floatBlocks = SemiBlockMemory(initialAddress: initialAddress + (self.sizeBlock * 4), sizeSemiBlock: self.sizeBlock)
        self.charBlocks = SemiBlockMemory(initialAddress: initialAddress + (self.sizeBlock * 5), sizeSemiBlock: self.sizeBlock)
        self.pointerBlocks = SemiBlockMemory(initialAddress: initialAddress + (self.sizeBlock * 6), sizeSemiBlock: self.sizeBlock)
    }
    
    func newIntAddress(sizeToReserve: Int) -> Int {
        return self.intBlocks.newAddressInMemory(sizeToReserve: sizeToReserve)
    }
    func newVoidAddress(sizeToReserve: Int) -> Int {
        return self.voidBlocks.newAddressInMemory(sizeToReserve: sizeToReserve)
    }
    func newDoubleAddress(sizeToReserve: Int) -> Int {
        return self.doubleBlocks.newAddressInMemory(sizeToReserve: sizeToReserve)
    }
    func newBoolAddress(sizeToReserve: Int) -> Int {
        return self.boolBlocks.newAddressInMemory(sizeToReserve: sizeToReserve)
    }
    
    func newFloatAddress(sizeToReserve: Int) -> Int {
        return self.floatBlocks.newAddressInMemory(sizeToReserve: sizeToReserve)
    }
    
    func newCharAddress(sizeToReserve: Int) -> Int {
        return self.charBlocks.newAddressInMemory(sizeToReserve: sizeToReserve)
    }
    
    func newPointerAddress(sizeToReserve: Int) -> Int {
        return self.pointerBlocks.newAddressInMemory(sizeToReserve: sizeToReserve)
    }
    
    func newAddress(type: TypeSymbol, size : Int) -> Int {
        switch type {
        case .void:
            return newVoidAddress(sizeToReserve: size)
        case .integer:
            return newIntAddress(sizeToReserve: size)
        case .string:
            break
        case .boolean:
            return newBoolAddress(sizeToReserve: size)
        case .float:
            return newFloatAddress(sizeToReserve: size)
        case .char:
            return newCharAddress(sizeToReserve: size)
        case .double:
            return newDoubleAddress(sizeToReserve: size)
        case .Integer:
            break
        case .String:
            break
        case .ID:
            break
        case .pointer:
            return newPointerAddress(sizeToReserve: size)
        }
        return -1
    }
    
    public var description: String {
        return
    """
    ----------------------------------------------------
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    ____________________________________________________
    | MEMORY SIZE:\n \(sizeBlock) Unidades
    |
    | INTEGERS:
    | \(intBlocks.description)
    |
    | VOIDS:
    | \(voidBlocks.description)
    |
    | DOUBLES:
    | \(doubleBlocks.description)
    |
    | BOOLS:
    | \(boolBlocks.description)
    |
    | FLOATS:
    | \(floatBlocks.description)
    |
    | CHARS:
    | \(charBlocks.description)
    |___________________________________________________
    ----------------------------------------------------
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    """
    }
    
}


class SemiBlockMemory : CustomStringConvertible {
    var initialAddress, myAddress, lastAddress : Int
    
    init(initialAddress : Int, sizeSemiBlock: Int) {
        self.initialAddress = initialAddress
        self.myAddress = initialAddress
        self.lastAddress = initialAddress + sizeSemiBlock - 1
    }
    
    func newAddressInMemory(sizeToReserve: Int) -> Int{
        let newAddress = self.myAddress
        self.myAddress += sizeToReserve
        return newAddress
    }
    
    func size() -> Int {
        return self.myAddress - self.initialAddress
    }
    
    public var description: String {
        return
    """
    _________________________________
    |   INITIAL ADDRESS: \(initialAddress)
    |   ACTUAL ADDRESS: \(myAddress)
    |   LAST ADDRESS: \(lastAddress)
    |________________________________
    """
    }
}
