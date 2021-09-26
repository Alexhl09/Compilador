//
//  CalcStream.swift
//  LittleDuck
//
//  Created by Alejandro Hernández López on 28/08/21.
//

import Cocoa

class CompilerStream : OCFileInput
{
    private var string: [String.UTF8View.Element]
    private var pos: Int

    init(string s: String)
    {
        pos = 0
        string = Array(s.utf8)
    }

    func readByte() -> Int
    {
        if pos >= string.count {
            return -1
        } else {
            let ret = Int(string[pos])
            pos += 1
            return ret
        }
    }

    func peekByte() -> Int
    {
        let a = nil ?? ""
        if pos >= string.count {
            return -1
        } else {
            return Int(string[pos])
        }
    }
}
