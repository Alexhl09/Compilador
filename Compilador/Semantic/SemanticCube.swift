//
//  SemanticCube.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 23/11/21.
//

import Foundation
/// Struct that saves the key of a SemanticCube
struct SemCubeKey : Hashable {
    let op1 : TypeSymbol
    let op2 : TypeSymbol?
    let o : Operator
}

// MARK: - Semantic Cube

/// Semantic cubes keeps track of the resultant TypeSymbol, from 2 types and an operartor
var semanticCube : [ SemCubeKey : TypeSymbol ] = [
    
    /// MARK : - Divisions
    
    // division integer
    SemCubeKey.init(op1: .integer, op2: .integer, o: .division) : .integer,
    SemCubeKey.init(op1: .integer, op2: .double, o: .division) : .double,
    SemCubeKey.init(op1: .integer, op2: .Integer, o: .division) : .integer,
    

    // division float
    
    // division double
    SemCubeKey.init(op1: .double, op2: .float, o: .division) : .double,
    
    // division Integer
    SemCubeKey.init(op1: .Integer, op2: .double, o: .division) : .double,
    SemCubeKey.init(op1: .Integer, op2: .float, o: .division) : .float,
    SemCubeKey.init(op1: .Integer, op2: .integer, o: .division) : .Integer,
    
    /// MARK : - minus
    
    // minus string
    SemCubeKey.init(op1: .string, op2: .string, o: .minus) : .string,
    SemCubeKey.init(op1: .string, op2: .char, o: .minus) : .string,
    SemCubeKey.init(op1: .string, op2: .String, o: .minus) : .String,
    
    // minus String
    SemCubeKey.init(op1: .String, op2: .string, o: .minus) : .String,
    SemCubeKey.init(op1: .String, op2: .char, o: .minus) : .String,
    SemCubeKey.init(op1: .String, op2: .String, o: .minus) : .String,
    
    // minus char
    SemCubeKey.init(op1: .char, op2: .string, o: .minus) : .string,
    SemCubeKey.init(op1: .char, op2: .char, o: .minus) : .string,
    SemCubeKey.init(op1: .char, op2: .String, o: .minus) : .String,
    
    // minus integer
    SemCubeKey.init(op1: .integer, op2: .integer, o: .minus) : .integer,
    SemCubeKey.init(op1: .integer, op2: .float, o: .minus) : .float,
    SemCubeKey.init(op1: .integer, op2: .double, o: .minus) : .double,
    SemCubeKey.init(op1: .integer, op2: .Integer, o: .minus) : .integer,
    

    // minus float
    SemCubeKey.init(op1: .float, op2: .float, o: .minus) : .float,
    SemCubeKey.init(op1: .float, op2: .integer, o: .minus) : .float,
    SemCubeKey.init(op1: .float, op2: .double, o: .minus) : .float,
    SemCubeKey.init(op1: .float, op2: .Integer, o: .minus) : .integer,
    
    // minus double
    SemCubeKey.init(op1: .double, op2: .double, o: .minus) : .double,
    SemCubeKey.init(op1: .double, op2: .float, o: .minus) : .double,
    SemCubeKey.init(op1: .double, op2: .integer, o: .minus) : .double,
    SemCubeKey.init(op1: .double, op2: .Integer, o: .minus) : .double,
    
    // minus Integer
    SemCubeKey.init(op1: .Integer, op2: .double, o: .minus) : .double,
    SemCubeKey.init(op1: .Integer, op2: .float, o: .minus) : .float,
    SemCubeKey.init(op1: .Integer, op2: .integer, o: .minus) : .Integer,
    SemCubeKey.init(op1: .Integer, op2: .Integer, o: .minus) : .Integer,
    
    /// MARK : - sum
    
    // sum string
    SemCubeKey.init(op1: .string, op2: .string, o: .sum) : .string,
    SemCubeKey.init(op1: .string, op2: .char, o: .sum) : .string,
    SemCubeKey.init(op1: .string, op2: .String, o: .sum) : .String,
    
    // sum String
    SemCubeKey.init(op1: .String, op2: .string, o: .sum) : .String,
    SemCubeKey.init(op1: .String, op2: .char, o: .sum) : .String,
    SemCubeKey.init(op1: .String, op2: .String, o: .sum) : .String,
    
    // sum char
    SemCubeKey.init(op1: .char, op2: .string, o: .sum) : .string,
    SemCubeKey.init(op1: .char, op2: .char, o: .sum) : .string,
    SemCubeKey.init(op1: .char, op2: .String, o: .sum) : .String,
    
    // sum integer
    SemCubeKey.init(op1: .integer, op2: .integer, o: .sum) : .integer,
    SemCubeKey.init(op1: .integer, op2: .float, o: .sum) : .float,
    SemCubeKey.init(op1: .integer, op2: .double, o: .sum) : .double,
    SemCubeKey.init(op1: .integer, op2: .Integer, o: .sum) : .integer,
    

    // sum float
    SemCubeKey.init(op1: .float, op2: .float, o: .sum) : .float,
    SemCubeKey.init(op1: .float, op2: .integer, o: .sum) : .float,
    SemCubeKey.init(op1: .float, op2: .double, o: .sum) : .float,
    SemCubeKey.init(op1: .float, op2: .Integer, o: .sum) : .integer,
    
    // sum double
    SemCubeKey.init(op1: .double, op2: .double, o: .sum) : .double,
    SemCubeKey.init(op1: .double, op2: .float, o: .sum) : .double,
    SemCubeKey.init(op1: .double, op2: .integer, o: .sum) : .double,
    SemCubeKey.init(op1: .double, op2: .Integer, o: .sum) : .double,
    
    // sum Integer
    SemCubeKey.init(op1: .Integer, op2: .double, o: .sum) : .double,
    SemCubeKey.init(op1: .Integer, op2: .float, o: .sum) : .float,
    SemCubeKey.init(op1: .Integer, op2: .integer, o: .sum) : .Integer,
    SemCubeKey.init(op1: .Integer, op2: .Integer, o: .sum) : .Integer,
    
    // sum pointer
    SemCubeKey.init(op1: .pointer, op2: .integer, o: .sum) : .integer,
    SemCubeKey.init(op1: .pointer, op2: .Integer, o: .sum) : .integer,
    SemCubeKey.init(op1: .pointer, op2: .integer, o: .multiply) : .integer,

    
    
    /// MARK : - multiply
    
    // multiply integer
    SemCubeKey.init(op1: .integer, op2: .integer, o: .multiply) : .integer,
    SemCubeKey.init(op1: .integer, op2: .float, o: .multiply) : .float,
    SemCubeKey.init(op1: .integer, op2: .double, o: .multiply) : .double,
    SemCubeKey.init(op1: .integer, op2: .Integer, o: .multiply) : .integer,
    

    // multiply float
    SemCubeKey.init(op1: .float, op2: .float, o: .multiply) : .float,
    SemCubeKey.init(op1: .float, op2: .integer, o: .multiply) : .float,
    SemCubeKey.init(op1: .float, op2: .double, o: .multiply) : .float,
    SemCubeKey.init(op1: .float, op2: .Integer, o: .multiply) : .integer,
    
    // multiply double
    SemCubeKey.init(op1: .double, op2: .double, o: .multiply) : .double,
    SemCubeKey.init(op1: .double, op2: .float, o: .multiply) : .double,
    SemCubeKey.init(op1: .double, op2: .integer, o: .multiply) : .double,
    SemCubeKey.init(op1: .double, op2: .Integer, o: .multiply) : .double,
    
    // multiply Integer
    SemCubeKey.init(op1: .Integer, op2: .double, o: .multiply) : .double,
    SemCubeKey.init(op1: .Integer, op2: .float, o: .multiply) : .float,
    SemCubeKey.init(op1: .Integer, op2: .integer, o: .multiply) : .Integer,
    SemCubeKey.init(op1: .Integer, op2: .Integer, o: .multiply) : .Integer,
    
    
    
    /// MARK : - Divisions
    
    // division integer
    SemCubeKey.init(op1: .integer, op2: .float, o: .division) : .float,
    

    // division float
    SemCubeKey.init(op1: .float, op2: .float, o: .division) : .float,
    SemCubeKey.init(op1: .float, op2: .integer, o: .division) : .float,
    SemCubeKey.init(op1: .float, op2: .double, o: .division) : .float,
    SemCubeKey.init(op1: .float, op2: .Integer, o: .division) : .integer,
    
    // division double
    SemCubeKey.init(op1: .double, op2: .double, o: .division) : .double,
    SemCubeKey.init(op1: .double, op2: .integer, o: .division) : .double,
    SemCubeKey.init(op1: .double, op2: .Integer, o: .division) : .double,
    
    // division Integer
    SemCubeKey.init(op1: .Integer, op2: .Integer, o: .division) : .Integer,
    
    /// MARK : - modulo
    
    // modulo integer
    SemCubeKey.init(op1: .integer, op2: .integer, o: .modulo) : .integer,
    SemCubeKey.init(op1: .integer, op2: .float, o: .modulo) : .float,
    SemCubeKey.init(op1: .integer, op2: .double, o: .modulo) : .double,
    SemCubeKey.init(op1: .integer, op2: .Integer, o: .modulo) : .integer,
    

    // modulo float
    SemCubeKey.init(op1: .float, op2: .float, o: .modulo) : .float,
    SemCubeKey.init(op1: .float, op2: .integer, o: .modulo) : .float,
    SemCubeKey.init(op1: .float, op2: .double, o: .modulo) : .float,
    SemCubeKey.init(op1: .float, op2: .Integer, o: .modulo) : .integer,
    
    // modulo double
    SemCubeKey.init(op1: .double, op2: .double, o: .modulo) : .double,
    SemCubeKey.init(op1: .double, op2: .float, o: .modulo) : .double,
    SemCubeKey.init(op1: .double, op2: .integer, o: .modulo) : .double,
    SemCubeKey.init(op1: .double, op2: .Integer, o: .modulo) : .double,
    
    // modulo Integer
    SemCubeKey.init(op1: .Integer, op2: .double, o: .modulo) : .double,
    SemCubeKey.init(op1: .Integer, op2: .float, o: .modulo) : .float,
    SemCubeKey.init(op1: .Integer, op2: .integer, o: .modulo) : .Integer,
    SemCubeKey.init(op1: .Integer, op2: .Integer, o: .modulo) : .Integer,
    
    /// MARK : - divisionInteger
    
    // divisionInteger integer
    SemCubeKey.init(op1: .integer, op2: .integer, o: .intDivision) : .integer,
    SemCubeKey.init(op1: .integer, op2: .float, o: .intDivision) : .integer,
    SemCubeKey.init(op1: .integer, op2: .double, o: .intDivision) : .integer,
    SemCubeKey.init(op1: .integer, op2: .Integer, o: .intDivision) : .Integer,
    

    // divisionInteger float
    SemCubeKey.init(op1: .float, op2: .float, o: .intDivision) : .integer,
    SemCubeKey.init(op1: .float, op2: .integer, o: .intDivision) : .integer,
    SemCubeKey.init(op1: .float, op2: .double, o: .intDivision) : .integer,
    SemCubeKey.init(op1: .float, op2: .Integer, o: .intDivision) : .Integer,
    
    // divisionInteger double
    SemCubeKey.init(op1: .double, op2: .double, o: .intDivision) : .integer,
    SemCubeKey.init(op1: .double, op2: .float, o: .intDivision) : .integer,
    SemCubeKey.init(op1: .double, op2: .integer, o: .intDivision) : .integer,
    SemCubeKey.init(op1: .double, op2: .Integer, o: .intDivision) : .Integer,
    
    // divisionInteger Integer
    SemCubeKey.init(op1: .Integer, op2: .double, o: .intDivision) : .Integer,
    SemCubeKey.init(op1: .Integer, op2: .float, o: .intDivision) : .Integer,
    SemCubeKey.init(op1: .Integer, op2: .integer, o: .intDivision) : .Integer,
    SemCubeKey.init(op1: .Integer, op2: .Integer, o: .intDivision) : .Integer,

    
    /// MARK : - assign
    ///
    ///
    SemCubeKey.init(op1: .Integer, op2: .Integer, o: .assign) : .Integer,
    SemCubeKey.init(op1: .Integer, op2: .integer, o: .assign) : .integer,
    SemCubeKey.init(op1: .Integer, op2: .double, o: .assign) : .double,
    SemCubeKey.init(op1: .Integer, op2: .float, o: .assign) : .float,
    
    SemCubeKey.init(op1: .double, op2: .Integer, o: .assign) : .double,
    SemCubeKey.init(op1: .double, op2: .integer, o: .assign) : .double,
    SemCubeKey.init(op1: .double, op2: .float, o: .assign) : .double,
    SemCubeKey.init(op1: .double, op2: .double, o: .assign) : .double,

    SemCubeKey.init(op1: .float, op2: .Integer, o: .assign) : .float,
    SemCubeKey.init(op1: .float, op2: .integer, o: .assign) : .float,
    SemCubeKey.init(op1: .float, op2: .float, o: .assign) : .float,
    SemCubeKey.init(op1: .float, op2: .double, o: .assign) : .double,
    
    SemCubeKey.init(op1: .integer, op2: .Integer, o: .assign) : .integer,
    SemCubeKey.init(op1: .integer, op2: .integer, o: .assign) : .integer,
    SemCubeKey.init(op1: .integer, op2: .float, o: .assign) : .float,
    SemCubeKey.init(op1: .integer, op2: .double, o: .assign) : .double,
    
    SemCubeKey.init(op1: .boolean, op2: .boolean, o: .assign) : .boolean,
    SemCubeKey.init(op1: .boolean, op2: .Integer, o: .assign) : .boolean,
    SemCubeKey.init(op1: .boolean, op2: .integer, o: .assign) : .boolean,
    SemCubeKey.init(op1: .boolean, op2: .float, o: .assign) : .boolean,
    SemCubeKey.init(op1: .boolean, op2: .double, o: .assign) : .boolean,
    
    SemCubeKey.init(op1: .Integer, op2: .boolean, o: .assign) : .boolean,
    SemCubeKey.init(op1: .integer, op2: .boolean, o: .assign) : .boolean,
    SemCubeKey.init(op1: .float, op2: .boolean, o: .assign) : .boolean,
    SemCubeKey.init(op1: .double, op2: .boolean, o: .assign) : .boolean,
    
    SemCubeKey.init(op1: .void, op2: .void, o: .assign) : .void,
    SemCubeKey.init(op1: .char, op2: .char, o: .assign) : .char,
    
    
    SemCubeKey.init(op1: .integer, op2: .pointer, o: .assign) : .integer,
    
    // MARK : - greaterThan
    
    // greaterThan integer
    SemCubeKey.init(op1: .integer, op2: .integer, o: .greaterThan) : .boolean,
    SemCubeKey.init(op1: .integer, op2: .float, o: .greaterThan) : .boolean,
    SemCubeKey.init(op1: .integer, op2: .double, o: .greaterThan) : .boolean,
    SemCubeKey.init(op1: .integer, op2: .Integer, o: .greaterThan) : .boolean,
    

    // greaterThan float
    SemCubeKey.init(op1: .float, op2: .float, o: .greaterThan) : .boolean,
    SemCubeKey.init(op1: .float, op2: .integer, o: .greaterThan) : .boolean,
    SemCubeKey.init(op1: .float, op2: .double, o: .greaterThan) : .boolean,
    SemCubeKey.init(op1: .float, op2: .Integer, o: .greaterThan) : .boolean,
    
    // greaterThan double
    SemCubeKey.init(op1: .double, op2: .double, o: .greaterThan) : .boolean,
    SemCubeKey.init(op1: .double, op2: .float, o: .greaterThan) : .boolean,
    SemCubeKey.init(op1: .double, op2: .integer, o: .greaterThan) : .boolean,
    SemCubeKey.init(op1: .double, op2: .Integer, o: .greaterThan) : .boolean,
    
    // greaterThan Integer
    SemCubeKey.init(op1: .Integer, op2: .double, o: .greaterThan) : .boolean,
    SemCubeKey.init(op1: .Integer, op2: .float, o: .greaterThan) : .boolean,
    SemCubeKey.init(op1: .Integer, op2: .integer, o: .greaterThan) : .boolean,
    SemCubeKey.init(op1: .Integer, op2: .Integer, o: .greaterThan) : .boolean,


    /// MARK : - greaterOrEqualThan
    ///
    // greaterOrEqualThan integer
    SemCubeKey.init(op1: .integer, op2: .integer, o: .greaterOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .integer, op2: .float, o: .greaterOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .integer, op2: .double, o: .greaterOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .integer, op2: .Integer, o: .greaterOrEqualThan) : .boolean,
    

    // greaterOrEqualThan float
    SemCubeKey.init(op1: .float, op2: .float, o: .greaterOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .float, op2: .integer, o: .greaterOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .float, op2: .double, o: .greaterOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .float, op2: .Integer, o: .greaterOrEqualThan) : .boolean,
    
    // greaterOrEqualThan double
    SemCubeKey.init(op1: .double, op2: .double, o: .greaterOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .double, op2: .float, o: .greaterOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .double, op2: .integer, o: .greaterOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .double, op2: .Integer, o: .greaterOrEqualThan) : .boolean,
    
    // greaterOrEqualThan Integer
    SemCubeKey.init(op1: .Integer, op2: .double, o: .greaterOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .Integer, op2: .float, o: .greaterOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .Integer, op2: .integer, o: .greaterOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .Integer, op2: .Integer, o: .greaterOrEqualThan) : .boolean,
 
    
    /// MARK : - lessThan
    // lessThan integer
    SemCubeKey.init(op1: .integer, op2: .integer, o: .lessThan) : .boolean,
    SemCubeKey.init(op1: .integer, op2: .float, o: .lessThan) : .boolean,
    SemCubeKey.init(op1: .integer, op2: .double, o: .lessThan) : .boolean,
    SemCubeKey.init(op1: .integer, op2: .Integer, o: .lessThan) : .boolean,
    

    // greaterThan float
    SemCubeKey.init(op1: .float, op2: .float, o: .lessThan) : .boolean,
    SemCubeKey.init(op1: .float, op2: .integer, o: .lessThan) : .boolean,
    SemCubeKey.init(op1: .float, op2: .double, o: .lessThan) : .boolean,
    SemCubeKey.init(op1: .float, op2: .Integer, o: .lessThan) : .boolean,
    
    // lessThan double
    SemCubeKey.init(op1: .double, op2: .double, o: .lessThan) : .boolean,
    SemCubeKey.init(op1: .double, op2: .float, o: .lessThan) : .boolean,
    SemCubeKey.init(op1: .double, op2: .integer, o: .lessThan) : .boolean,
    SemCubeKey.init(op1: .double, op2: .Integer, o: .lessThan) : .boolean,
    
    // lessThan Integer
    SemCubeKey.init(op1: .Integer, op2: .double, o: .lessThan) : .boolean,
    SemCubeKey.init(op1: .Integer, op2: .float, o: .lessThan) : .boolean,
    SemCubeKey.init(op1: .Integer, op2: .integer, o: .lessThan) : .boolean,
    SemCubeKey.init(op1: .Integer, op2: .Integer, o: .lessThan) : .boolean,


    // lessOrEqualThan integer
    SemCubeKey.init(op1: .integer, op2: .integer, o: .lessOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .integer, op2: .float, o: .lessOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .integer, op2: .double, o: .lessOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .integer, op2: .Integer, o: .lessOrEqualThan) : .boolean,
    

    // lessOrEqualThan float
    SemCubeKey.init(op1: .float, op2: .float, o: .lessOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .float, op2: .integer, o: .lessOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .float, op2: .double, o: .lessOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .float, op2: .Integer, o: .lessOrEqualThan) : .boolean,
    
    // lessOrEqualThan double
    SemCubeKey.init(op1: .double, op2: .double, o: .lessOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .double, op2: .float, o: .lessOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .double, op2: .integer, o: .lessOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .double, op2: .Integer, o: .lessOrEqualThan) : .boolean,
    
    // lessOrEqualThan Integer
    SemCubeKey.init(op1: .Integer, op2: .double, o: .lessOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .Integer, op2: .float, o: .lessOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .Integer, op2: .integer, o: .lessOrEqualThan) : .boolean,
    SemCubeKey.init(op1: .Integer, op2: .Integer, o: .lessOrEqualThan) : .boolean,
    
    // equal integer
    SemCubeKey.init(op1: .integer, op2: .integer, o: .equal) : .boolean,
    SemCubeKey.init(op1: .integer, op2: .float, o: .equal) : .boolean,
    SemCubeKey.init(op1: .integer, op2: .double, o: .equal) : .boolean,
    SemCubeKey.init(op1: .integer, op2: .Integer, o: .equal) : .boolean,
    

    // equal float
    SemCubeKey.init(op1: .float, op2: .float, o: .equal) : .boolean,
    SemCubeKey.init(op1: .float, op2: .integer, o: .equal) : .boolean,
    SemCubeKey.init(op1: .float, op2: .double, o: .equal) : .boolean,
    SemCubeKey.init(op1: .float, op2: .Integer, o: .equal) : .boolean,
    
    // equal double
    SemCubeKey.init(op1: .double, op2: .double, o: .equal) : .boolean,
    SemCubeKey.init(op1: .double, op2: .float, o: .equal) : .boolean,
    SemCubeKey.init(op1: .double, op2: .integer, o: .equal) : .boolean,
    SemCubeKey.init(op1: .double, op2: .Integer, o: .equal) : .boolean,
    
    // equal Integer
    SemCubeKey.init(op1: .Integer, op2: .double, o: .equal) : .boolean,
    SemCubeKey.init(op1: .Integer, op2: .float, o: .equal) : .boolean,
    SemCubeKey.init(op1: .Integer, op2: .integer, o: .equal) : .boolean,
    SemCubeKey.init(op1: .Integer, op2: .Integer, o: .equal) : .boolean,
    
    SemCubeKey.init(op1: .boolean, op2: .boolean, o: .equal) : .boolean,
    SemCubeKey.init(op1: .boolean, op2: .boolean, o: .different) : .boolean,
    SemCubeKey.init(op1: .boolean, op2: .boolean, o: .and) : .boolean,
    SemCubeKey.init(op1: .boolean, op2: .boolean, o: .or) : .boolean,
]
