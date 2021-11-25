//
//  SemanticHandler.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 12/10/21.
//

import Foundation

//
//  SemanticCube.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 23/11/21.
//


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


/**
 The SemanticHandler is an special classs that manages the semantic actions of the compiler.
 - note: This class is initilizated in the parser and uses the informacion of certail tokens or expresions to execute some functions
*/
public class SemanticHandler : CustomStringConvertible {
    
    // MARK: - Properties
    /// The globalFinalIndex keeps track of the last instruction of global statements
    public var globalFinalIndex : Bool = false
    /// The delagate is used to send an error message with certain informacion to the user
    public var delegate : SemanticErrorDelegate? = nil
    /// The array of quadruples generated during the compilation
    public var quadruples : [Quadruple] = []
    /// Symbol table that keeps track of each variable, function or constant declared in the program
    public var symbolTable : SymbolTable = SymbolTable()
    /// The jump stack keeps track of the qaudruples like GOTO, GOTOF, that needs to be filled when the statement has finished
    public var jumpStack : Stack<Int> = []
    /// The operationStack keeps track of the operands and operators found
    public var operationStack : OperatorStack = OperatorStack()
    /// The constants is a dictionary that contains the address and the value to do not repeat the same address for the same value
    public var constants: [String: Int] = [:]
    /// The name of the current function to be reviewed
    public var functionAsMainThread : String? = nil
    /// This is the memory class that handles the management of addresses depending on the kind of segment and the data type
    public var memory : VirtualMemorySemantic = VirtualMemorySemantic()
    /// The globalInfoStack saves the number of addresses requested as global
    public var globalInfoStack: InfoStack = InfoStack()
    /// The constanstInfoStack saves the number of addresses requested as constants
    public var constanstInfoStack : InfoStack = InfoStack()
    /// The addressArrays saves the address of each array and number of elements
    public var addressArrays: [Int:  Int] = [:]

    // MARK: - Initializer
    init() {
        functionAsMainThread = "main"
    }
    
    // MARK: - SymbolTable
    /**
     This function inserts in the symbol table an identifier and its properties, like the type, kind, and more. If it wasn't possible to insert it to the symbol table, it sends an error indicating that the variable was already declared.
     - Note: When it was inserted it asks for a local or global address in memory depending on the deepth of the symbol table
     - Parameters:
        - id: The identifier to be inserted in the symbolTable
        - constant: Add a flag indicating if the symbol is constant
        - array: Add a flag indicating if the symbol is an array
        - type: Add the type of the symbol, by default is void
        - kind: Add the kind of the symbol (field or method), by default is a field
        - params: The symbols that are received as parameters in case of a function, the default value is an empty array []
    */
    public func insertSymbolToST(_ id : NSString, _ constant: Bool, _ array : Bool, _ type: TypeSymbol = .void, _ kind : Kind = .field, params: [Symbol] = []){
        
        let symbolToInsert = Symbol(0, id, kind, type, constant, array, false)
        if (!symbolTable.insertInHashTable(symbolToInsert)){
            delegate?.sendVariableRepeated(id: id as String)
        }else{
            if(symbolTable.onlyOneNode()){
                symbolToInsert.address = newGlobalVariable(s: type)
            }else{
                symbolToInsert.address = newLocalVariable(t: type)
            }
            if(params.count > 0){
                symbolToInsert.params = params.reversed() as Array
            }
        }
    }
    /**
     This function inserts in the symbol table a 2d array with identifier and its properties, like the type, kind, and more. If it wasn't possible to insert it to the symbol table, it sends an error indicating that the variable was already declared.
     - Note: When it was inserted it asks for a local or global address in memory depending on the deepth of the symbol table
     - Parameters:
        - id: The identifier to be inserted in the symbolTable
        - dimension: The dimension of the array in case of a 2D array
        - const: Add a flag indicating if the symbol is constant
        - type: Add the type of the symbol, by default is void
        - list: The data structure that saves the nodes of each dimension to make the addresses linear
    */
    public func insertArrayToST(_ id : NSString, _ dimension : (NSNumber, NSNumber), _ list: ArrayLinkedList, r: Int, const : Bool = true, type: TypeSymbol  = .void){
        let symbolToInsert = Symbol(0, id, .field, type, const, true, false, rows: dimension.0, columns: dimension.1)
        
        var temp = list.head
        var dim = 1
        var offset = 0
        let size = r
        var myR = r
        while temp != nil{
            temp!.m = myR/(temp?.limSup ?? 1 + 1)
            myR = temp!.m
            offset = offset + 0 * temp!.m
            temp!.m = dim
            temp = temp?.next
            dim += 1
        }
        
        self.addConstantInteger(dimension.0, saveOperand: false)
        self.addConstantInteger(dimension.1, saveOperand: false)
        
        let sizeArray = dimension.0.intValue * dimension.1.intValue
        
        if (!symbolTable.insertInHashTable(symbolToInsert)){
            delegate?.sendVariableRepeated(id: id as String)
        }else{
            if(symbolTable.onlyOneNode()){
                symbolToInsert.address = newGlobalVariable(s: type, size: sizeArray)
            }else{
                symbolToInsert.address = newLocalVariable(t: type, size: sizeArray)
            }
        }
    }
    /**
     This function inserts in the symbol table a N dimension array with identifier and its properties, like the type, kind, and more. If it wasn't possible to insert it to the symbol table, it sends an error indicating that the variable was already declared.
     - Note: When it was inserted it asks for a local or global address in memory depending on the deepth of the symbol table
     - Parameters:
        - id: The identifier to be inserted in the symbolTable
        - dimension: The dimension of the array in case of a 2D array
        - const: Add a flag indicating if the symbol is constant
        - type: Add the type of the symbol, by default is void
        - list: The data structure that saves the nodes of each dimension to make the addresses linear
        - r: Number of total elements in the array
    */
    public func insertArrayMultiDimToST(_ id : NSString, _ list: ArrayLinkedList, r: Int, const : Bool = true, type: TypeSymbol  = .void, _ dimension : (NSNumber, NSNumber) = (NSNumber(value: -1), NSNumber(value: -1)), kind : Kind = .field){
        let symbolToInsert = Symbol(0, id, kind, type, const, true, false, rows: dimension.0, columns: dimension.1)
        if(dimension.0 != -1 && dimension.1 != -1){
            self.addConstantInteger(dimension.0, saveOperand: false)
            self.addConstantInteger(dimension.1, saveOperand: false)
        }
        
        
        
        var temp = list.head
        var dim = 1
        var offset = 0
        let size = r
        var myR = r
        while temp != nil{
            self.addConstantInteger( NSNumber(value: temp!.limSup), saveOperand: false)
            temp!.m = myR/(temp?.limSup ?? 1)
            myR = temp!.m
            offset = offset + 0 * temp!.m
            temp!.dim = dim
            temp = temp?.next
            dim += 1
        }
        symbolToInsert.arrayList = list
        symbolToInsert.dimension2D = (0, dim)

        if (!symbolTable.insertInHashTable(symbolToInsert)){
            delegate?.sendVariableRepeated(id: id as String)
        }else{
            if(symbolTable.onlyOneNode()){
                symbolToInsert.address = newGlobalVariable(s: type, size: size)
            }else{
                symbolToInsert.address = newLocalVariable(t: type, size: size)
            }
        }
        
        addressArrays[symbolToInsert.address] = size
    }
    
    // MARK: - ARRAYS
    /**
     This function assigns the data type of a symbol in case, sets the property assigned true and if there is soemthing in the operands stack, gets the data type of the last operand and assigns that data type to the symbol in case of being void,
     - Note: This allows no strict  variable typed declarations
     - Parameters:
        - symbol: The symbol to be assigned
     */
    fileprivate func assignArray(_ symbol: Symbol) {
        symbol.assigned = true
        let sizeArray = symbol.arrayList?.head?.r ?? 0
        if(symbol.type != operationStack.operands.peek()?.1 ?? .void){
            symbol.type = operationStack.operands.peek()?.1 ?? .void
            if(symbolTable.onlyOneNode()){
                symbol.address = self.newGlobalVariable(s: symbol.type, size: sizeArray)
            }else{
                symbol.address = self.newLocalVariable(t: symbol.type, size: sizeArray)
            }
        }
        addressArrays[symbol.address] = sizeArray
    }
    /**
     This function assigns a value to only one cell of an array. It adds the symbol and push it to the operands stack and finally generates the quadruple.
     - Parameters:
        - id: The name of the array to be assigned
     */
    func assignOneCellArray(_ id : NSString){
        guard let symbol = symbolTable.lookup(id as String) else {
            delegate?.sendUndeclareVariable(id: id);
            return}
        if (!symbol.assigned && !symbol.constant){
            assignArray(symbol)
        }
        
        self.addOperand(symbol: symbol)
        
        do {
            try generateQuadrupleAssignCellArray(symbol: symbol,withValue: true)
        }catch(let error){
            print(error.localizedDescription)
        }
    }
    /**
     This function read a value to only one cell of an array. It adds the symbol and push it to the operands stack and finally generates the quadruple. At the end it saves the value of the final address in a temporal value.
     - Parameters:
        - id: The name of the array to be read
     */
    public func readOneCellArray(_ id : NSString){
        guard let symbol = symbolTable.lookup(id as String) else {
            delegate?.sendUndeclareVariable(id: id);
            return
        }
       
        self.addOperand(symbol: symbol)
        
        do {
            try generateQuadrupleAssignCellArray(symbol: symbol,withValue: false)
            fillParcheGArrays(t: symbol.type, nameArray: symbol.identifier)
        }catch(let error){
            print(error.localizedDescription)
           // exit(0)
        }
    }
    /**
     This function assigns a value to one 2D array. It adds the symbol and push it to the operands stack and finally generates the quadruple.
     - Parameters:
        - id: The name of the array to be assigned
     */
    public func assignArray(_ id: NSString){
        guard let symbol = symbolTable.lookup(id as String) else {
            delegate?.sendUndeclareVariable(id: id);
            return}
        let sizeArray = symbol.arrayList?.head?.r ?? 0
        let sizeArrayToTake = self.addressArrays[Int(self.operationStack.operands.peek()?.0 ?? "0")!]
        guard self.operationStack.operands.size() >= sizeArray || sizeArrayToTake != nil else {
            delegate?.faltanOperandos()
            return
        }
        if(sizeArrayToTake ?? 0 > 0){
            let operand : (String, TypeSymbol) = self.operationStack.getLastOperand()!
            for i in 0..<sizeArrayToTake!{
                self.operationStack.addOperand(operand: "\(Int(operand.0)! + i)", type: operand.1)
            }
        }
        if(!symbol.assigned && !symbol.constant){
            assignArray(symbol)
        }
        
        let baseAddress = symbol.address
        let operands : [(String, TypeSymbol)] = self.operationStack.getLastNOperands(sizeArray).reversed()
        
        for i in (0..<sizeArray) {
           
            let quadrupleArrayAssign = Quadruple(argument1: "\(operands[i].0)", argument2: nil, op: .assign, result: "\(baseAddress + i)")
            self.quadruples.append(quadrupleArrayAssign)
        }
        let _ = self.operationStack.operators.pop()
    }
    
    // MARK: - Scopes
    /**
     This function creates a new node at the beginning of the symbol table (Implemeted as a linked list with dictionaries)
    */
    public func startScope(){
        symbolTable.newNode()
    }
    
    /**
     This function removes the node first node of the symbol table
    */
    public func endScope(){
        symbolTable.pop()
    }
    
    // MARK: - Operation stack
    
    /**
     Adds a new operator to the operators stack
     - Parameter op: The operator to be inserted in the operator stack
    */
    public func addOperator(op : Operator){
        operationStack.operators.push(op)
    }
    
    /**
     Adds a new operand to the operands stack (a stack made of tuple (Operand, Type))
     - Parameter symbol: The symbol to be inserted in the operands stack
        
    */
    func addOperand(symbol : Symbol, save: Bool = false){
        if(save){
            if(symbol.array){
                guard let size = symbol.arrayList?.head?.r else { operationStack.addOperand(operand: "\(symbol.address)", type: symbol.type); return}
                if(operationStack.operands.size() >= size){
                    operationStack.operators.pop()
                    let o : [(String, TypeSymbol)] = operationStack.getLastNOperands(size).reversed()
                    for i in 0..<size{
                        operationStack.addOperand(operand: o[i].0, type: o[i].1)
                        operationStack.addOperand(operand: "\(symbol.address + i)", type: symbol.type)
                        operationStack.addOperator(op: .assign)
                    }
                }else{
                    operationStack.addOperand(operand: "\(symbol.address)", type: symbol.type)
                }
                
            }else{
                operationStack.addOperand(operand: "\(symbol.address)", type: symbol.type)
            }
        }else{
            operationStack.addOperand(operand: "\(symbol.address)", type: symbol.type)
        }
        
        
    }
    
    /**
     Adds a new operand to the operands stack (a stack made of tuple (Operand, Type))
     - Parameter memoryAddress: The operand to be inserted in the operands stack
     - Parameter type: The type of the operand to be inserted in the operands stack
    */
    public func addOperandByMemory(memoryAddress: Int, type: TypeSymbol) {
        operationStack.addOperand(operand: "\(memoryAddress)", type: type)
    }
    
    
    // MARK: - Memory Handler
    /**
     Ask to the memory for a new global address for a specific type
     - Parameter s: The type of the symbol
     - Parameter size: And optional value, that sets the number of spaces to take, by default is 1
    */
    public func newGlobalVariable(s : TypeSymbol, size : Int = 1) -> Int {
        fillInfoStack(infoStack: self.globalInfoStack, varSymbolType: s,size: size)
        return memory.newGlobalAddress(type: s, size: size)
    }
    /**
     Ask to the memory for a new local address for a specific type
     - Parameter t: The type of the symbol
     - Parameter size: And optional value, that sets the number of spaces to take, by default is 1
    */
    public func newLocalVariable(t: TypeSymbol, size : Int = 1) -> Int {
        if let funcSymbol = symbolTable.lookup(functionAsMainThread!) {
            fillInfoStack(infoStack: funcSymbol.localInfoStack, varSymbolType: t, size: size)
        }
        return memory.newLocalAdress(type: t, sizeToReserve: size)
    }
    
    /**
     Ask to the memory for a new temporal address for a specific type
     - Parameter t: The type of the symbol
     - Parameter size: And optional value, that sets the number of spaces to take, by default is 1
    */
    public func newTemporalAddress(t: TypeSymbol, size : Int = 1) -> Int {
        if let funcSymbol = symbolTable.lookup(functionAsMainThread!) {
            fillInfoStack(infoStack: funcSymbol.temporalInfoStack, varSymbolType: t, size: size)
        }
        return memory.newTemporalAddress(type: t)
    }
    
    public func newConstantAddress(t: TypeSymbol, size: Int = 1) -> Int {
        fillInfoStack(infoStack: self.constanstInfoStack, varSymbolType: t, size: size)
        return memory.newConstantAddress(type: t, sizeToReserve: size)
    }
    
    // MARK: - Constants
    /**
     Look for the address of an specific value of integer, and save that as an operand
     - Parameter number: The object number
     - Parameter size: And optional value, that sets the number of spaces to take, by default is 1
    */
    public func addConstantInteger(_ number :NSNumber, size : Int = 1, saveOperand : Bool = true){
        /// Takes the integer value
        let integerValue = number.intValue
        /// Looks for the address in the constant Table
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(integerValue)") {
            /// If found, add that address as an operand of type integer
            if(saveOperand){
                self.addOperandByMemory(memoryAddress: lookUpAddress, type: .integer)
            }
        }else{
            /// If not, ask for new constant address of integer type
            let newAddress = self.newConstantAddress(t: .integer, size: size)
            /// Save the value and new address to the constant table
            self.saveAddress(constant: integerValue, address: newAddress)
            /// Add the new address as an operand in operands stack
            if(saveOperand){
                self.addOperandByMemory(memoryAddress: newAddress, type: .integer)
            }
        }
    }
    
    /**
     Look for the address of an specific value of float, and save that as an operand
     - Parameter number: The object number
     - Parameter size: And optional value, that sets the number of spaces to take, by default is 1
    */
    public func addConstantFloat(_ number : NSNumber, size : Int = 1){
        /// Takes the float value
        let floatValue = number.floatValue
        /// Looks for the address in the constant Table
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(floatValue)") {
            /// If found, add that address as an operand of type float
            self.addOperandByMemory(memoryAddress: lookUpAddress, type: .float)
        }else{
            /// If not, ask for new constant address of float type
            let newAddress = self.newConstantAddress(t: .float, size: size)
            /// Save the value and new address to the constant table
            self.saveAddress(constant: floatValue, address: newAddress)
            /// Add the new address as an operand in operands stack
            self.addOperandByMemory(memoryAddress: newAddress, type: .float)
        }
        
    }
    /**
     Look for the address of an specific value of double, and save that as an operand
     - Parameter number: The object number
     - Parameter size: And optional value, that sets the number of spaces to take, by default is 1
    */
    public func addConstantDouble(_ number : NSNumber, size : Int = 1){
        /// Takes the float value
        let doubleValue = number.doubleValue
        /// Looks for the address in the constant Table
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(doubleValue)") {
            /// If found, add that address as an operand of type double
            self.addOperandByMemory(memoryAddress: lookUpAddress, type: .double)
        }else{
            /// If not, ask for new constant address of double type
            let newAddress = self.newConstantAddress(t: .double, size: size)
            /// Save the value and new address to the constant table
            self.saveAddress(constant: doubleValue, address: newAddress)
            /// Add the new address as an operand in operands stack
            self.addOperandByMemory(memoryAddress: newAddress, type: .double)
        }
    }
    /**
     Look for the address of an specific value of bool, and save that as an operand
     - Parameter number: The object number
     - Parameter size: And optional value, that sets the number of spaces to take, by default is 1
    */
    public func addConstantBool(_ number : NSNumber, size : Int = 1){
        /// Takes the bool value
        let boolValue = number.boolValue
        /// Looks for the address in the constant Table
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(boolValue)") {
            /// If found, add that address as an operand of type bool
            self.addOperandByMemory(memoryAddress: lookUpAddress, type: .boolean)
        }else{
            /// If not, ask for new constant address of bool type
            let newAddress = self.newConstantAddress(t: .boolean, size: size)
            /// Save the value and new address to the constant table
            self.saveAddress(constant: boolValue, address: newAddress)
            /// Add the new address as an operand in operands stack
            self.addOperandByMemory(memoryAddress: newAddress, type: .boolean)
        }
    }
    /**
     Look for the address of an specific value of double, and save that as an operand
     - Parameter character: The object nsstring
     - Parameter size: And optional value, that sets the number of spaces to take, by default is 1
    */
    func addConstantChar(_ character : NSString, size : Int = 1){
        // Takes the char value
        let s = (character as String)
        let index = s.index(s.startIndex, offsetBy: 1)
        let charValue : Character = s[index]
        /// Looks for the address in the constant Table
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(charValue)") {
            /// If found, add that address as an operand of type bool
            self.addOperandByMemory(memoryAddress: lookUpAddress, type: .char)
        }else{
            /// If not, ask for new constant address of char type
            let newAddress = self.newConstantAddress(t: .char, size: size)
            /// Save the value and new address to the constant table
            self.saveAddress(constant: charValue, address: newAddress)
            /// Add the new address as an operand in operands stack
            self.addOperandByMemory(memoryAddress: newAddress, type: .char)
        }
    }
    
    /**
     Look for the address of an specific value of string, and save that as an operand
     - Parameter string: The object nsstring
     - Parameter size: And optional value, that sets the number of spaces to take, by default is 1
    */
    public func addConstantString(_ string : NSString,  size : Int = 1){
        var s = (string as String)
        s.removeFirst()
        s.removeLast()
        for (ind,_) in s.enumerated(){
            let index = s.index(s.startIndex, offsetBy: ind)
            let charValue : Character = s[index]
            if let lookUpAddress = lookUpAddressConstantTable(value: "\(charValue)") {
                /// If found, add that address as an operand of type bool
                self.addOperandByMemory(memoryAddress: lookUpAddress, type: .char)
            }else{
                /// If not, ask for new constant address of char type
                let newAddress = self.newConstantAddress(t: .char, size: size)
                /// Save the value and new address to the constant table
                self.saveAddress(constant: charValue, address: newAddress)
                /// Add the new address as an operand in operands stack
                self.addOperandByMemory(memoryAddress: newAddress, type: .char)
            }

        }
        
    }


    /**
     Save address with a new constant and the address
     - Returns: An optional address for a value
     - Parameter constant: The value to be used as index in cosntant table
     - Parameter address: The address of the value
    */
    public func saveAddress(constant: Any, address: Int) {
        self.constants["\(constant)"] = address
    }
    
    /**
     Look in the constant table for an address in a specified index
     - Returns: An optional address for a value
     - Parameter value: The value to be searched in constant table
    */
    public func lookUpAddressConstantTable(value: String) -> Int? {
        return self.constants[value]
    }
    
    // MARK: - Quadruple Generation
    /**
     This function creates the quadruples for 2 operands.
    */
    public func addQuadruple() {
        /// Logic for 2 operands
        /// First check if the operands stack has at least 2 operands, and at least 1 operator in the operators stack
        if(operationStack.operands.size() >= 2 && operationStack.operators.size() >= 1){
            /// Pop the operator
            let op : Operator = operationStack.operators.pop()!
            /// Pop the right operand (last to be inserted in operands stacks)
            let (rightOperand, rightType) : (String, TypeSymbol) = operationStack.getLastOperand()!
            /// Pop the left operand (last to be inserted in operands stacks)
            let (leftOperand, leftType) : (String, TypeSymbol) = operationStack.getLastOperand()!
            /// Check if it possible the operation between left and right operand
            guard let resultType = semanticCube[SemCubeKey(op1: rightType, op2: leftType, o: op)] else {
                /// If it is impossible, send an error
                delegate?.sendInvalidOperationBetween(t1: leftType, t2: rightType)
                return
            }
            /// Ask for a temp memory for the result type
            let tempAddress = newTemporalAddress(t: resultType)
            /// Add to the quadruples a new one, with the operation
            self.quadruples.append(Quadruple(argument1: leftOperand , argument2: rightOperand, op: op, result: "\(tempAddress)"))
            /// Add the temp result as an operand in th operands stack
            self.operationStack.addOperand(operand: "\(tempAddress)", type: resultType)
        }
        
    }
    
    /**
     When the main is found, if the globalFinalIndex flag was still false it creates the quadruple GOTO to main. Now it has been found main, it fills the GOTO quadruple.
    */
    public func foundMain(){
        if(globalFinalIndex == false){
            globalFinalIndex = true
            self.jumpStack.push(self.quadruples.count)
            self.quadruples.append(Quadruple(argument1: nil, argument2: nil, op: .goto, result: nil))
        }
        /// Pop jump stack and take that as the index where the goto main isntruction is
        let indexMain = jumpStack.pop() ?? 0
        /// Use the funtion fill to add the information need fot the main to jump
        fillQuadruple(index: indexMain, value: "\(self.quadruples.count)")
    }
    
    /**
        This function adds a symbol as an operand
     - Parameter id: The identifier of the symbol
    */
    public func addIDAsQuadruple(_ id : NSString){
        let identifier : String = String(id)
        guard let operand = self.symbolTable.lookup(identifier) else {
            delegate?.sendUndeclareVariable(id: id)
            return
        }
        self.addOperand(symbol: operand)
    }
    /**
        This function adds a GOTOF like an IF statement for ternary operations
     - Parameter id: The identifier of the symbol
    */
    public func addQuadrupleWithTernaryOperator(){
        if(operationStack.operands.size() >= 1){
            
            let (rightOperand, rightType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("",.void)
    
            if(rightType != .boolean){
                delegate?.sendTypeMismatch()
            }
            
            self.quadruples.append(Quadruple(argument1: rightOperand, argument2: nil, op: .gotof, result: nil))
            self.jumpStack.push(self.quadruples.count - 1)
        }
    }
    /**
        This function adds a GOTO like an IF statement for ternary operations and fills the quadruple GOTOF for next statement
     - Parameter id: The identifier of the symbol
    */
    public func colonTernaryOperator(){
        let indexToFill = self.jumpStack.pop() ?? 0
        
        self.quadruples.append(Quadruple(argument1: nil, argument2: nil, op: .goto, result: nil))
        self.jumpStack.push(self.quadruples.count - 1)
        
        self.fillQuadruple(index: indexToFill, value: "\(self.quadruples.count)")
    }
    
    
    /// At the end of a ternary operator, we generare the quadruples of the operations
    public func endTernaryOperator(){
        let indexToFill = self.jumpStack.pop() ?? 0
        self.fillQuadruple(index: indexToFill, value: "\(self.quadruples.count)")
            
        if(self.operationStack.operands.size() >= 2){
            let op : Operator = .assign

            let (rightOperand, rightType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
            let (leftOperand, leftType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
            
            guard let resultType = semanticCube[SemCubeKey(op1: rightType, op2: leftType, o: op)] else {
                print("ERROR")
                delegate?.sendInvalidOperationBetween(t1: leftType, t2: rightType)
                return
            }
            
            let tempAddress = newTemporalAddress(t: resultType)
            
            self.quadruples.append(Quadruple(argument1: rightOperand, argument2: leftOperand, op: op, result: "\(tempAddress)"))
            self.operationStack.addOperand(operand: "\(tempAddress)", type: resultType)
        }
    }
    
    /// When a condition is added we get the last operand and it should be a boolean,
    ///  In case of error, send a type mismatch
    ///  Add the GOTOF with the result of the last operand
    ///    Finally we add the current index of quadruple to the jump stack to resolve latter
    public func addCondicional(){
        let (result,t) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
        
        guard t == TypeSymbol.boolean  else {
            print("ERROR")
            delegate?.sendTypeMismatch()
            return
        }
        
        self.quadruples.append(Quadruple(argument1: result, argument2: nil, op: .gotof, result: nil))
        jumpStack.push(quadruples.count - 1)
    }
    
    /// At the end of a conditional we fill the GOTOF that was still pending
    public func endCondicional(){
        let end = jumpStack.pop() ?? 0
        fillQuadruple(index: end, value: String(quadruples.count))
    }
    
    /// Fill Quadruple is a function that sets the "result" property of a quadruple
    /// - Parameter index:Index in the array of qaudruples to modify
    /// - Parameter value: Value to insert as result in quadruple
    public func fillQuadruple(index: Int, value : String){
        quadruples[index].result = value
    }
    
    /// In case of else add a GOTO quadruple, add the current quadruple to be filled latter and fill the GOTOF that was created at the beginning of conditional
    public func addElse(){
        self.quadruples.append( Quadruple(argument1: nil, argument2: nil, op: .goto, result: nil))
        guard let end = jumpStack.pop() else {
            delegate?.badJumpStackEmpty()
            return}
        jumpStack.push(quadruples.count - 1)
        fillQuadruple(index: end, value: String(quadruples.count))
    }
    
    ///  This functions detects if an address is an array
    ///  - Parameter address: Address to check if it is an array
    public func isArray(address: Int) -> Int?{
        var temp = self.symbolTable.head
        while(temp != nil){
            let p = temp?.symbols.filter({ (key, value) in
                return value.array == true && value.address == address
            }).map({ (k,v) in
                return v.address
            })
            if(p?.count ?? 0 > 0){
                return p?.first
            }
            temp = temp?.next
        }
        return nil
        
    }
    /// Add print is a function that creates the print quadruple in case of a single value, or multiple prints in case of an array
    public func addPrint(){
        if(!operationStack.operands.isEmpty){
            let address = (isArray(address: Int(operationStack.operands.peek()?.0 ?? "0") ?? 0))
            let val = self.addressArrays[address ?? 0]
            if(val != nil && address != nil){
                let (operand, t) = operationStack.getLastOperand() ?? ("", .void)
                for i in 0..<(val ?? 0){
                    guard let o = Int(operand) else { return  }
                    
                    if(t != .char){
                        self.quadruples.append( Quadruple(argument1: "\(-2)", argument2: nil, op: .print, result: "\(o + i)"))
                    }else{
                        self.quadruples.append( Quadruple(argument1: nil, argument2: nil, op: .print, result: "\(o + i)"))
                    }
                }
                self.quadruples.append( Quadruple(argument1: nil, argument2: nil, op: .print, result: "\(-1)"))
                return
            }else{
                operationStack.operands.reverse()
                while(!operationStack.operands.isEmpty){
                    let (operand, _) = operationStack.getLastOperand() ?? ("", .void)
                    let op = operationStack.operators.pop() ?? .print
                    self.quadruples.append( Quadruple(argument1: nil, argument2: nil, op: op, result: operand))
                }
                self.quadruples.append( Quadruple(argument1: nil, argument2: nil, op: .print, result: "\(-1)"))
            }
            
        }
    }
    
    /// This function add the quadruples needed to evaluate a for each statement.
    ///  - Parameter range: String ... if close range, ..< if not close range
    ///  - Parameter id: String with the identifier of the variable that is going to change its value during iteration
    public func addForEachRange(range: String, id: String){
        
        // Save id to iterate in st
        self.insertSymbolToST(id as NSString, false, false, .integer)
        // assign
        self.addOperator(op:.assign)
        // to id the last factor

        let firstOperand = self.operationStack.getLastOperand() ?? ("", .void)
        let sencondOperand = self.operationStack.getLastOperand() ?? ("", .void)
        
        self.operationStack.addOperand(operand: firstOperand.0, type: firstOperand.1)
        self.operationStack.addOperand(operand: sencondOperand.0, type: sencondOperand.1)
  
        
        self.saveValueVariable(id : id)
        
        self.jumpStack.push(self.quadruples.count)
        
        if(range == "..."){
            self.operationStack.operators.push(.greaterOrEqualThan)
        }else{
            self.operationStack.operators.push(.greaterThan)
        }
        self.addOperand(symbol: returnSymbolByID(id) )
        self.addQuadruple()
       
        let (result, t) = operationStack.getLastOperand() ?? ("", .void)
        
        guard (t == TypeSymbol.boolean) else {
            print("ERROR")
            delegate?.sendTypeMismatch()
            return
        }
                
        self.quadruples.append(Quadruple(argument1: result, argument2: nil, op: .gotof, result: nil))
        self.jumpStack.push(self.quadruples.count - 1)
        
    }
    /// At the end we add 1 to the value of the id in the for each operation
    public func plusplusOneRange(id: String){
        self.operationStack.operators.push(.sum)
        self.addOperand(symbol: self.symbolTable.lookup(id)!)
        self.addConstantInteger(1)
        self.addQuadruple()
        self.addOperator(op: .assign)
        self.saveValueVariable(id: id)
    }
    
    /// Call plusplusOneRange and add the GOTO at the end of iteration to verify again the operations
    public func endForEachRange(id: NSString){
        
        self.plusplusOneRange(id: id as String)
        
        guard let indexFalse = self.jumpStack.pop() else { return  }
        guard let indexGoto = self.jumpStack.pop() else { return  }
        self.fillQuadruple(index: indexFalse, value: "\(quadruples.count + 1)")
        self.quadruples.append(Quadruple(argument1: nil, argument2: nil, op: .goto, result: "\(indexGoto)"))
        
    }
    
    /**
        For variables, when we know that it is void and hasn't been assigned, we can assign them. Set the property assign to true and change the data type of the symbol to the one that is going to be assigned, asking for a memory address of this new type
            If it is a constant and has been assigned, we send an error indicating that a constant cannot be assigned again
            - Parameter symbol: Symbol that is going to be assigned
     */
    fileprivate func assignVar(_ symbol: Symbol) {
        if(!symbol.assigned && symbol.type == .void){
            symbol.assigned = true
            if(symbol.type != operationStack.operands.peek()?.1 ?? .void){
                symbol.type = operationStack.operands.peek()?.1 ?? .void
                let beforeAddres = symbol.address
                if(symbolTable.onlyOneNode()){
                    symbol.address = newGlobalVariable(s: symbol.type)
                }else{
                    symbol.address = newLocalVariable(t: symbol.type)
                }
            }
        } else if(!symbol.assigned){
            symbol.assigned = true
            if(symbolTable.onlyOneNode()){
                symbol.address = newGlobalVariable(s: symbol.type)
            }else{
                symbol.address = newLocalVariable(t: symbol.type)
            }
        } else if(symbol.assigned && symbol.constant){
            delegate?.constantAlreadyAssigned(id: symbol.identifier)
        }
    }
    
    /**
        Given an identifier we get the symbol, add the symbol as an operand and finally the quadruple of assignment is generated
        - Parameter id: Identifier of variable that is going to be assigned
     */
    public func saveValueVariable(id: String){
        guard let symbol = symbolTable.lookup(id) else {
            delegate?.sendUndeclareVariable(id: id as NSString);
            return}
        
        assignVar(symbol)
        self.addOperand(symbol: symbol, save: true)
        
        do {
           try generateQuadruple()
        }catch(let error){
            print(error.localizedDescription)
        }
       
    }
    /**
             While the are operands and operators we take 2 operands ans 1 operator. Check if it is valid with the semanticCube and generate the quadruple. If there is an error an invalid operation message is sent throught the delegate.
     */
    public func generateQuadruple() throws {
        repeat{
            
            guard operationStack.operands.size() > 1 else {
                delegate?.faltanOperandos()
                return
            }
            guard operationStack.operators.size() >= 1 else {
                delegate?.faltanOperandos()
                return
            }
            let op : Operator = operationStack.operators.pop()!

            let (rightOperand, rightType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
            let (leftOperand, leftType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
            
            guard semanticCube[SemCubeKey(op1: rightType, op2: leftType, o: op)] != nil else {
                delegate?.sendInvalidOperationBetween(t1: rightType, t2: leftType)
                throw ErrorCompiler.TypeMismatch
            }
            let generatedQuadruple : Quadruple = Quadruple(argument1: leftOperand , argument2: nil, op: op, result: rightOperand)
            self.quadruples.append(generatedQuadruple)
        }while(operationStack.operands.size() > 1 && operationStack.operators.size() > 0)
    }
    
    /// In order to get at the end the memory address  of an array, we generate the verify quadruples and calculate the final position to jump to get the right address.
    /// At the end we add as an operand the pointer indicating which address we want to access.
    /// - Parameter symbol: Array in which we are going to be calculaling the final address
    /// - Parameter withValue: Flag that indicates if we are only reading or writing the address
    public func generateQuadrupleAssignCellArray(symbol: Symbol, withValue: Bool) throws {
         
        let (symbolOperand, _) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
        
        let baseAddress = self.needConstantInt(value: Int(symbolOperand)!)
        
        guard symbol.dimension2D != nil else {
            delegate?.notArray(id: symbol.identifier)
            return
        }
        var temp = symbol.arrayList?.head
        var dimNow = 1
        
        
        if(withValue){
            operationStack.operands.reverse()
        }else{
            operationStack.operands.reverseTop(n: symbol.arrayList?.count ?? 100)
        }

        while(temp != nil){
          
            let (valueOperand, _) : (String, TypeSymbol) = operationStack.operands.peek() ?? ("", .void)
            
            if let lookUpAddress = lookUpAddressConstantTable(value: "\(temp!.limSup)") {
                let quadrupleVerify = Quadruple(argument1: valueOperand, argument2: nil, op: .vrf, result: "\(lookUpAddress)")
                self.quadruples.append(quadrupleVerify)
            }else{
                let newAddress = self.newConstantAddress(t: .integer)
                /// Save the value and new address to the constant table
                self.saveAddress(constant: temp?.limSup ?? 0, address: newAddress)
                let quadrupleVerify = Quadruple(argument1: valueOperand, argument2: nil, op: .vrf, result: "\(newAddress)")
                self.quadruples.append(quadrupleVerify)
            }
            
            if(temp?.next != nil){
                let (valueOperand, valueType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
                
                guard let resultType = semanticCube[SemCubeKey(op1: valueType, op2: .integer, o: .multiply)] else {
                    /// If it is impossible, send an error
                    delegate?.sendInvalidOperationBetween(t1: valueType, t2: .integer)
                    return
                }
                
                let tempAddress = newTemporalAddress(t: resultType)
                
                let auxQ = Quadruple(argument1: valueOperand, argument2: "\(needConstantInt(value: temp!.m))", op: .multiply, result: "\(tempAddress)")
                
                self.quadruples.append(auxQ)
                
                // PREVIOUS
                let (topOperand, topType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
                self.operationStack.addOperand(operand: "\(tempAddress)", type: resultType)
                self.operationStack.addOperand(operand: "\(topOperand)", type: topType)
                
            }
            
            if(dimNow > 1){
                
                let (aux2Operand, aux2Type) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
                let (aux1Operand, aux1Type) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
                
                
                guard let resultType2 = semanticCube[SemCubeKey(op1: aux2Type, op2: aux1Type, o: .sum)] else {
                    /// If it is impossible, send an error
                    delegate?.sendInvalidOperationBetween(t1: aux2Type, t2: aux1Type)
                    return
                }
                
                let tempAddress2 = newTemporalAddress(t: resultType2)
               
                let auxS = Quadruple(argument1: aux1Operand, argument2: aux2Operand, op: .sum, result: "\(tempAddress2)")
                self.quadruples.append(auxS)
                // PREVIOUS
                if(withValue){
                    let (top2Operand, top2Type) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
                    self.operationStack.addOperand(operand: "\(tempAddress2)", type: resultType2)
                    self.operationStack.addOperand(operand: "\(top2Operand)", type: top2Type)
                }else if(dimNow < symbol.arrayList?.count ?? 0) {
                    let (top2Operand, top2Type) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
                    self.operationStack.addOperand(operand: "\(tempAddress2)", type: resultType2)
                    self.operationStack.addOperand(operand: "\(top2Operand)", type: top2Type)
                }else{
                    self.operationStack.addOperand(operand: "\(tempAddress2)", type: resultType2)
                }
               
            }
            
            dimNow += 1
            temp = temp?.next
        }
        
        if(withValue){
            if(dimNow < 3){
                self.operationStack.operands.reverse()
            }
            let (assignOperand, assignType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
            let (lastAuxOperand, lastAuxType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
            let tempAddress3 = newTemporalAddress(t: .pointer)
            let lastQuadruple = Quadruple(argument1: "\(lastAuxOperand)", argument2: "\(baseAddress)", op: .sum, result: "\(tempAddress3)")
            self.quadruples.append(lastQuadruple)
            self.operationStack.addOperand(operand: "\(tempAddress3)", type: .pointer)
            self.operationStack.addOperand(operand: "\(assignOperand)", type: assignType)
        }else{
            let (lastAuxOperand, lastAuxType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
            
            let tempAddress3 = newTemporalAddress(t: .pointer)
            let lastQuadruple = Quadruple(argument1: "\(lastAuxOperand)", argument2: "\(baseAddress)", op: .sum, result: "\(tempAddress3)")
            self.quadruples.append(lastQuadruple)
            self.operationStack.addOperand(operand: "\(tempAddress3)", type: .pointer)
        }
        
     
        
    }
    
    public func countO() -> Int{
        var s = operationStack.operators
        var re = 0
        while(!s.isEmpty){
            switch s.pop(){
            case .sum, .minus, .multiply, .modulo, .division:
                re += 1
            default:
                break
            }
            
        }
        return re
    }
    
    /// When we want to assign a value to a pointer, it is set with this function
    /// That takes the last operands and operator to assign the result to the pointer
    public func assignToPointer(){
        guard operationStack.operands.size() > 1 else {
            return
        }
        
        let op : Operator = operationStack.operators.pop()!
        

        let (valOperand, _) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
        let (pointerOperand, _) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)

        let generatedQuadruple : Quadruple = Quadruple(argument1: valOperand , argument2: nil, op: op, result: pointerOperand)
        self.quadruples.append(generatedQuadruple)
        
    }
    
    /// When a constant for an integer is needed we look for it in the constant table, if it was already there, we sent the address
    /// If not a new address is requested
    /// - Parameter value: Value to get the address
    public func needConstantInt(value : Int) -> Int{
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(value)") {
            return lookUpAddress
        }else{
            let newAddress = self.newConstantAddress(t: .integer)
            /// Save the value and new address to the constant table
            self.saveAddress(constant: value, address: newAddress)
            return newAddress
        }
    }
    /// This function returns the symbol given a certain identifier
    public func returnSymbolByID(_ id: String) -> Symbol{
        return self.symbolTable.lookup(id) ?? Symbol()
    }
    /// To read a simple variable the read operator is added and the quadruples are generated using the operator and the address to be read
    public func readID(_ id: NSString){
        self.addOperator(op: .read)
        self.addIDAsQuadruple(id)
        if(!operationStack.operators.isEmpty){
            let op : Operator = operationStack.operators.pop()!
            
            let (rightOperand, _) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
            
            let generatedQuadruple : Quadruple = Quadruple(argument1: nil , argument2: nil, op: op, result: rightOperand)
            self.quadruples.append(generatedQuadruple)
        }
    }
    
    /**
     To read (input) a multidimensional array, the operator add is taken and add the symbol as operand, getting the final address of the array as pointer. Finally we create the read quadruple for that pointer
     */
    public func readIDMulti(_ id: NSString){
        self.addOperator(op: .read)
        
        guard let symbol = symbolTable.lookup(id as String) else {
            delegate?.sendUndeclareVariable(id: id);
            return
        }
       
        self.addOperand(symbol: symbol)
        
        do {
            try generateQuadrupleAssignCellArray(symbol: symbol,withValue: false)
        }catch{
            
        }
        let op : Operator = operationStack.operators.pop()!
        let (rightOperand, _) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
        let generatedQuadruple : Quadruple = Quadruple(argument1: nil , argument2: nil, op: op, result: rightOperand)
        self.quadruples.append(generatedQuadruple)
    }
    /// When the while operation starts, it is added to the jump stack to be filled latter
    public func whileP1() {
        jumpStack.push(quadruples.count)
    }
    /// The GOTOF is added with the result of a boolean expression
    /// If the last expression was not a boolean it sends an error
    public func whileP2() {
        let (result,t) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
        
        guard t == TypeSymbol.boolean  else {
            print("ERROR")
            delegate?.sendTypeMismatch()
            return
        }
        quadruples.append(Quadruple(argument1: result, argument2: nil, op: .gotof, result: nil))
        jumpStack.push(quadruples.count - 1)
    }
    /// We create the GOTO to the beginning of the while and fill the quadruple that we left ath the begining with the GOTOF
    public func whileP3() {
        let end = jumpStack.pop() ?? -1
        let result = jumpStack.pop() ?? -1
        quadruples.append(Quadruple(argument1: nil, argument2: nil, op: .goto, result: "\(result)"))
        fillQuadruple(index: end, value: String(quadruples.count))
        
    }
    
    // MARK: - FUNCTIONS
    /// When a funtion starts the current function property is set to the id of the new function
    public func startFunction(_ id: NSString){
        self.functionAsMainThread = id as String
        self.setCurrentCuadruple()
    }
    /// Saves the count of quadruples where all the functions begin
    public func setCurrentCuadruple(){
        if(globalFinalIndex == false){
            globalFinalIndex = true
            self.jumpStack.push(self.quadruples.count)
            self.quadruples.append(Quadruple(argument1: nil, argument2: nil, op: .goto, result: nil))
        }
        guard let symbolFunction = symbolTable.lookup(functionAsMainThread ?? "") else {
            return
        }
        symbolFunction.currentCuadruple = self.quadruples.count
    }
    /// When a funtion is ended with create the endFunc quadruple
    /// And reset the local and temporal memory
    public func endFunction(){
        let endFunctionQuadruple = Quadruple(argument1: nil, argument2: nil, op: .endFunc, result: nil)
        self.quadruples.append(endFunctionQuadruple)
        self.memory.removeLocalAndTemporalMemory()
    }
    /**
        When a function is called, we get the id of the function and its arguments.
        Check the type of the arguments and the sign of the function and check if they are the same, if there is an error we send the bad params message through the delegate
        The era quadruple is generated and send all the args as params in several quadruples
        At the end creates the gosub rutine quadruple to start executing the function
     - Parameter idFunction: Identifier of the function
     - Parameter args: Address and Type of each argument
     */
    public func functionCall(_ idFunction : NSString, args : [(String, TypeSymbol)]){
        guard let symbolFunction = symbolTable.lookup(idFunction as String) else {
            print("Not found function to be called")
            return
        }
        let typeArguments = args.map({$0.1}).reversed() as Array
        let typeParams = symbolFunction.params.map({$0.type})
        guard (typeArguments == typeParams) else{
            delegate?.sendBadParametersForFunc(id: idFunction)
            return
        }
                
        let quadrupleEra = Quadruple(argument1: nil, argument2: nil, op: .era, result: symbolFunction.identifier)
        self.quadruples.append(quadrupleEra)
        
        for (index, arg) in args.enumerated().reversed() {
            if let argAddress = Int(arg.0){
                if let numberArray = isArray(address: argAddress),let size = addressArrays[numberArray] {
                    if(symbolFunction.params.reversed()[index].arrayList?.head?.r == size){
                        for i in 0..<size{
                            let quadrupleParam = Quadruple(argument1: "\(argAddress + i)", argument2: nil, op: .param, result: "\(symbolFunction.params.reversed()[index].address + i)")
                            self.quadruples.append(quadrupleParam)
                        }
                    }else{
                        delegate?.sendBadParametersForFunc(id: idFunction)
                    }
                }else{
                    let quadrupleParam = Quadruple(argument1: arg.0, argument2: nil, op: .param, result: "\(symbolFunction.params.reversed()[index].address)")
                    self.quadruples.append(quadrupleParam)
                }
            }
        }
        
        
        // CREATE GOSUB
        let quadrupleGosub = Quadruple(argument1: nil, argument2: nil, op: .gosub, result: symbolFunction.identifier)
        self.quadruples.append(quadrupleGosub)
                    
        // Check if return not void and parche G
        fillParcheG(t: symbolFunction.type, funcName: symbolFunction.identifier)
    }
    
    /// When the function returns something we check taht the expression that is going to be sent is of the same type of the function
    /// Then generate return quadruple for the expression and in case of an array, we send all the values
    /// At the end generate the endFunc quadruple
    public func returnFunctions(){
        guard let symbolFunction = symbolTable.lookup(functionAsMainThread ?? "") else {
            return
        }
        // Tipo esperado de retorno
        let returnTypeExpected = symbolFunction.type
        let (operand, type) = operationStack.getLastOperand() ?? ("",.void)
        
        guard (returnTypeExpected == type) else {
            delegate?.sendInvalidOperationBetween(t1: type, t2: returnTypeExpected)
            print("Mistmatch return and expected")
            
            return
        }
        
        if let sizeArray = self.addressArrays[symbolFunction.address], let sizeArrayFunc = self.addressArrays[Int(operand) ?? 0]{
            if(sizeArray != sizeArrayFunc){
                delegate?.sendInvalidOperationBetween(t1: type, t2: returnTypeExpected)
            }else{
                for i in 0..<sizeArray{
                    let opAddress = Int(operand) ?? 0
                    let quadruploReturn = Quadruple(argument1: "\(opAddress + i)", argument2: nil, op: .rtn, result: "\(symbolFunction.address + i)")
                    self.quadruples.append(quadruploReturn)
                  
                }
                let quadruploEnd = Quadruple(argument1: nil, argument2: nil, op: .endFunc, result: nil)
                self.quadruples.append(quadruploEnd)
            }
            
        }else{
            let quadruploReturn = Quadruple(argument1: operand, argument2: nil, op: .rtn, result: "\(symbolFunction.address)")
            self.quadruples.append(quadruploReturn)
            let quadruploEnd = Quadruple(argument1: nil, argument2: nil, op: .endFunc, result: nil)
            self.quadruples.append(quadruploEnd)
        }
    }
    
    /// The information of the stack is filled adding the number of addresses to be used
    /// - Parameter infoStack: stack to be filled
    /// - Parameter varSymbolTable: The type of the symbol that is used
    /// - Parameter size: Size to be reserved
    public func fillInfoStack(infoStack: InfoStack, varSymbolType : TypeSymbol, size : Int) {
        switch varSymbolType {
        case .String:
            infoStack.numberStrings += size
            break
        case .Integer:
            infoStack.numberInts += size
            break
        case .void:
            infoStack.numberVoids += size
            break
        case .integer:
            infoStack.numberInts += size
            break
        case .string:
            infoStack.numberStrings += size
            break
        case .boolean:
            infoStack.numberBools += size
            break
        case .float:
            infoStack.numberFloats += size
            break
        case .char:
            infoStack.numberChars += size
            break
        case .double:
            infoStack.numberDoubles += size
            break
        case .ID:
            break
        case .pointer:
            infoStack.numberPointers += size
            break
        }
    }
    
    /// At the end of a function call the value is saved in a temporal variable in order to used it latter.
    public func fillParcheG(t: TypeSymbol, funcName: String){
        guard let symbol = symbolTable.lookup(funcName) else {return}
        if(symbol.type != .void && symbol.kind == .method){
            if let sizeArray = symbol.arrayList?.head?.r {
                let newAddresss = newTemporalAddress(t: t,size: sizeArray)
                for i in 0..<sizeArray{
                   
                    self.operationStack.addOperand(operand: "\(newAddresss + i)", type: t)
                
                    let quadrupleReturn = Quadruple(argument1: "\(symbol.address + i)", argument2: nil, op: .assign, result: "\(newAddresss + i)")
                    self.quadruples.append(quadrupleReturn)
                }
        
            }else{
                let newAddresss = newTemporalAddress(t: t)
                self.operationStack.addOperand(operand: "\(newAddresss)", type: t)
            
                let quadrupleReturn = Quadruple(argument1: "\(symbol.address)", argument2: nil, op: .assign, result: "\(newAddresss)")
                self.quadruples.append(quadrupleReturn)
            }
            
            
        }
    }
    
    
    public func fillParcheGArrays(t: TypeSymbol, nameArray: String){
        guard let symbol = symbolTable.lookup(nameArray) else {return}
        let newAddresss = newLocalVariable(t: t)
        let (pointerOperand, _) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
        self.operationStack.addOperand(operand: "\(newAddresss)", type: t)
        let quadrupleReturn = Quadruple(argument1: "\(pointerOperand)", argument2: nil, op: .assign, result: "\(newAddresss)")
        self.quadruples.append(quadrupleReturn)
    }

    
    public var description: String {
        let q = quadruples.enumerated().reduce("", { res, q in
            res.appending("[\(q.offset)] - Op: \(q.element.op )".padding(toLength: 20, withPad: " ", startingAt: 0) + "Address1: \(q.element.argument1 ?? "")".padding(toLength: 20, withPad: " ", startingAt: 0) + "Address2: \(q.element.argument2 ?? "")".padding(toLength: 20, withPad: " ", startingAt: 0) + "Result: \(q.element.result ?? "")\n")
        })
        
        let constInfo = constants.reduce("") { res, dic in
            res.appending("Constant:[\(dic.key)]".padding(toLength: 20, withPad: " ", startingAt: 0) + "Address: \(dic.value)\n")
        }
        return
    """
    Memory: \n \(memory.description)
    
    Cuadruplos:\n\(q)
    
    JumpStack:\n \(jumpStack.description)
    
    Operators:\n \(operationStack.operators.description)
    
    Operands:\n \(operationStack.operands.description)
        
    Last SymbolTable:\n \(symbolTable.description)
    
    Constants: \n \(constInfo)
    
    """
        
    }
}

public enum ErrorCompiler : Error{
    case TypeMismatch
}


public protocol SemanticErrorDelegate {
    func sendVariableRepeated(id : String)
    func sendInvalidOperationBetween(t1 : TypeSymbol, t2: TypeSymbol)
    func sendUndeclareVariable(id: NSString)
    func sendTypeMismatch()
    func sendBadParametersForFunc(id: NSString)
    func faltanOperandos()
    func badJumpStackEmpty()
    func constantAlreadyAssigned(id: String)
    func notArray(id: String)
}
