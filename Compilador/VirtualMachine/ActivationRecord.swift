//
//  ActivationRecord.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 03/11/21.
//

import Foundation
import AppKit

class ActivationRecord{
    
    private var symbolFunction: Symbol
    public var index: Int
    public var localMemory: VirtualMemoryBlock
    public var temporalMemory: VirtualMemoryBlock


    init(quadrupleIndex: Int = 0, functionSymbol: Symbol){
        self.index = quadrupleIndex
        self.symbolFunction = functionSymbol
        self.localMemory = VirtualMemoryBlock(infoStack: symbolFunction.localInfoStack, sizeBlock: 7000, kind: .Local)
        self.temporalMemory = VirtualMemoryBlock(infoStack: symbolFunction.temporalInfoStack, sizeBlock: 7000, kind: .Temporal)
    }
    
    func saveValue(address: Int, val : Any) throws {
        switch address{
        case 7000..<14000:
            try? self.localMemory.insertInMemory(address: address, value: val)
        case 14000..<21000:
            try? self.temporalMemory.insertInMemory(address: address, value: val)
        default:
            break
        }
    }
}
