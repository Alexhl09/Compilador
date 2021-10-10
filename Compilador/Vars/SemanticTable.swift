
enum Operator : Int {
    case sum
    case minus
    case multiply
    case division
    case modulo
    case intDivision
}

struct semCubeKey : Hashable {
    let op1 : TypeSymbol
    let op2 : TypeSymbol
    let o : Operator
}


var semanticCube : [ semCubeKey : TypeSymbol ] = [
    
    /// MARK : - Divisions
    
    // division integer
    semCubeKey.init(op1: .integer, op2: .integer, o: .division) : .integer,
    semCubeKey.init(op1: .integer, op2: .float, o: .division) : .float,
    semCubeKey.init(op1: .integer, op2: .double, o: .division) : .double,
    semCubeKey.init(op1: .integer, op2: .Integer, o: .division) : .integer,
    

    // division float
    semCubeKey.init(op1: .float, op2: .float, o: .division) : .float,
    semCubeKey.init(op1: .float, op2: .integer, o: .division) : .float,
    semCubeKey.init(op1: .float, op2: .double, o: .division) : .float,
    semCubeKey.init(op1: .float, op2: .Integer, o: .division) : .integer,
    
    // division double
    semCubeKey.init(op1: .double, op2: .double, o: .division) : .double,
    semCubeKey.init(op1: .double, op2: .float, o: .division) : .double,
    semCubeKey.init(op1: .double, op2: .integer, o: .division) : .double,
    semCubeKey.init(op1: .double, op2: .Integer, o: .division) : .double,
    
    // division Integer
    semCubeKey.init(op1: .Integer, op2: .double, o: .division) : .double,
    semCubeKey.init(op1: .Integer, op2: .float, o: .division) : .float,
    semCubeKey.init(op1: .Integer, op2: .integer, o: .division) : .Integer,
    semCubeKey.init(op1: .Integer, op2: .Integer, o: .division) : .Integer,
    
    /// MARK : - minus
    
    // minus string
    semCubeKey.init(op1: .string, op2: .string, o: .minus) : .string,
    semCubeKey.init(op1: .string, op2: .char, o: .minus) : .string,
    semCubeKey.init(op1: .string, op2: .String, o: .minus) : .String,
    
    // minus String
    semCubeKey.init(op1: .String, op2: .string, o: .minus) : .String,
    semCubeKey.init(op1: .String, op2: .char, o: .minus) : .String,
    semCubeKey.init(op1: .String, op2: .String, o: .minus) : .String,
    
    // minus char
    semCubeKey.init(op1: .char, op2: .string, o: .minus) : .string,
    semCubeKey.init(op1: .char, op2: .char, o: .minus) : .string,
    semCubeKey.init(op1: .char, op2: .String, o: .minus) : .String,
    
    // minus integer
    semCubeKey.init(op1: .integer, op2: .integer, o: .minus) : .integer,
    semCubeKey.init(op1: .integer, op2: .float, o: .minus) : .float,
    semCubeKey.init(op1: .integer, op2: .double, o: .minus) : .double,
    semCubeKey.init(op1: .integer, op2: .Integer, o: .minus) : .integer,
    

    // minus float
    semCubeKey.init(op1: .float, op2: .float, o: .minus) : .float,
    semCubeKey.init(op1: .float, op2: .integer, o: .minus) : .float,
    semCubeKey.init(op1: .float, op2: .double, o: .minus) : .float,
    semCubeKey.init(op1: .float, op2: .Integer, o: .minus) : .integer,
    
    // minus double
    semCubeKey.init(op1: .double, op2: .double, o: .minus) : .double,
    semCubeKey.init(op1: .double, op2: .float, o: .minus) : .double,
    semCubeKey.init(op1: .double, op2: .integer, o: .minus) : .double,
    semCubeKey.init(op1: .double, op2: .Integer, o: .minus) : .double,
    
    // minus Integer
    semCubeKey.init(op1: .Integer, op2: .double, o: .minus) : .double,
    semCubeKey.init(op1: .Integer, op2: .float, o: .minus) : .float,
    semCubeKey.init(op1: .Integer, op2: .integer, o: .minus) : .Integer,
    semCubeKey.init(op1: .Integer, op2: .Integer, o: .minus) : .Integer,
    
    /// MARK : - sum
    
    // sum string
    semCubeKey.init(op1: .string, op2: .string, o: .sum) : .string,
    semCubeKey.init(op1: .string, op2: .char, o: .sum) : .string,
    semCubeKey.init(op1: .string, op2: .String, o: .sum) : .String,
    
    // sum String
    semCubeKey.init(op1: .String, op2: .string, o: .sum) : .String,
    semCubeKey.init(op1: .String, op2: .char, o: .sum) : .String,
    semCubeKey.init(op1: .String, op2: .String, o: .sum) : .String,
    
    // sum char
    semCubeKey.init(op1: .char, op2: .string, o: .sum) : .string,
    semCubeKey.init(op1: .char, op2: .char, o: .sum) : .string,
    semCubeKey.init(op1: .char, op2: .String, o: .sum) : .String,
    
    // sum integer
    semCubeKey.init(op1: .integer, op2: .integer, o: .sum) : .integer,
    semCubeKey.init(op1: .integer, op2: .float, o: .sum) : .float,
    semCubeKey.init(op1: .integer, op2: .double, o: .sum) : .double,
    semCubeKey.init(op1: .integer, op2: .Integer, o: .sum) : .integer,
    

    // sum float
    semCubeKey.init(op1: .float, op2: .float, o: .sum) : .float,
    semCubeKey.init(op1: .float, op2: .integer, o: .sum) : .float,
    semCubeKey.init(op1: .float, op2: .double, o: .sum) : .float,
    semCubeKey.init(op1: .float, op2: .Integer, o: .sum) : .integer,
    
    // sum double
    semCubeKey.init(op1: .double, op2: .double, o: .sum) : .double,
    semCubeKey.init(op1: .double, op2: .float, o: .sum) : .double,
    semCubeKey.init(op1: .double, op2: .integer, o: .sum) : .double,
    semCubeKey.init(op1: .double, op2: .Integer, o: .sum) : .double,
    
    // sum Integer
    semCubeKey.init(op1: .Integer, op2: .double, o: .sum) : .double,
    semCubeKey.init(op1: .Integer, op2: .float, o: .sum) : .float,
    semCubeKey.init(op1: .Integer, op2: .integer, o: .sum) : .Integer,
    semCubeKey.init(op1: .Integer, op2: .Integer, o: .sum) : .Integer,
    
    /// MARK : - multiply
    
    // multiply integer
    semCubeKey.init(op1: .integer, op2: .integer, o: .multiply) : .integer,
    semCubeKey.init(op1: .integer, op2: .float, o: .multiply) : .float,
    semCubeKey.init(op1: .integer, op2: .double, o: .multiply) : .double,
    semCubeKey.init(op1: .integer, op2: .Integer, o: .multiply) : .integer,
    

    // multiply float
    semCubeKey.init(op1: .float, op2: .float, o: .multiply) : .float,
    semCubeKey.init(op1: .float, op2: .integer, o: .multiply) : .float,
    semCubeKey.init(op1: .float, op2: .double, o: .multiply) : .float,
    semCubeKey.init(op1: .float, op2: .Integer, o: .multiply) : .integer,
    
    // multiply double
    semCubeKey.init(op1: .double, op2: .double, o: .multiply) : .double,
    semCubeKey.init(op1: .double, op2: .float, o: .multiply) : .double,
    semCubeKey.init(op1: .double, op2: .integer, o: .multiply) : .double,
    semCubeKey.init(op1: .double, op2: .Integer, o: .multiply) : .double,
    
    // multiply Integer
    semCubeKey.init(op1: .Integer, op2: .double, o: .multiply) : .double,
    semCubeKey.init(op1: .Integer, op2: .float, o: .multiply) : .float,
    semCubeKey.init(op1: .Integer, op2: .integer, o: .multiply) : .Integer,
    semCubeKey.init(op1: .Integer, op2: .Integer, o: .multiply) : .Integer,
    
    /// MARK : - Divisions
    
    // division integer
    semCubeKey.init(op1: .integer, op2: .integer, o: .division) : .integer,
    semCubeKey.init(op1: .integer, op2: .float, o: .division) : .float,
    semCubeKey.init(op1: .integer, op2: .double, o: .division) : .double,
    semCubeKey.init(op1: .integer, op2: .Integer, o: .division) : .integer,
    

    // division float
    semCubeKey.init(op1: .float, op2: .float, o: .division) : .float,
    semCubeKey.init(op1: .float, op2: .integer, o: .division) : .float,
    semCubeKey.init(op1: .float, op2: .double, o: .division) : .float,
    semCubeKey.init(op1: .float, op2: .Integer, o: .division) : .integer,
    
    // division double
    semCubeKey.init(op1: .double, op2: .double, o: .division) : .double,
    semCubeKey.init(op1: .double, op2: .float, o: .division) : .double,
    semCubeKey.init(op1: .double, op2: .integer, o: .division) : .double,
    semCubeKey.init(op1: .double, op2: .Integer, o: .division) : .double,
    
    // division Integer
    semCubeKey.init(op1: .Integer, op2: .double, o: .division) : .double,
    semCubeKey.init(op1: .Integer, op2: .float, o: .division) : .float,
    semCubeKey.init(op1: .Integer, op2: .integer, o: .division) : .Integer,
    semCubeKey.init(op1: .Integer, op2: .Integer, o: .division) : .Integer,
    
    /// MARK : - modulo
    
    // modulo integer
    semCubeKey.init(op1: .integer, op2: .integer, o: .modulo) : .integer,
    semCubeKey.init(op1: .integer, op2: .float, o: .modulo) : .float,
    semCubeKey.init(op1: .integer, op2: .double, o: .modulo) : .double,
    semCubeKey.init(op1: .integer, op2: .Integer, o: .modulo) : .integer,
    

    // modulo float
    semCubeKey.init(op1: .float, op2: .float, o: .modulo) : .float,
    semCubeKey.init(op1: .float, op2: .integer, o: .modulo) : .float,
    semCubeKey.init(op1: .float, op2: .double, o: .modulo) : .float,
    semCubeKey.init(op1: .float, op2: .Integer, o: .modulo) : .integer,
    
    // modulo double
    semCubeKey.init(op1: .double, op2: .double, o: .modulo) : .double,
    semCubeKey.init(op1: .double, op2: .float, o: .modulo) : .double,
    semCubeKey.init(op1: .double, op2: .integer, o: .modulo) : .double,
    semCubeKey.init(op1: .double, op2: .Integer, o: .modulo) : .double,
    
    // modulo Integer
    semCubeKey.init(op1: .Integer, op2: .double, o: .modulo) : .double,
    semCubeKey.init(op1: .Integer, op2: .float, o: .modulo) : .float,
    semCubeKey.init(op1: .Integer, op2: .integer, o: .modulo) : .Integer,
    semCubeKey.init(op1: .Integer, op2: .Integer, o: .modulo) : .Integer,
    
    /// MARK : - divisionInteger
    
    // divisionInteger integer
    semCubeKey.init(op1: .integer, op2: .integer, o: .intDivision) : .integer,
    semCubeKey.init(op1: .integer, op2: .float, o: .intDivision) : .integer,
    semCubeKey.init(op1: .integer, op2: .double, o: .intDivision) : .integer,
    semCubeKey.init(op1: .integer, op2: .Integer, o: .intDivision) : .Integer,
    

    // divisionInteger float
    semCubeKey.init(op1: .float, op2: .float, o: .intDivision) : .integer,
    semCubeKey.init(op1: .float, op2: .integer, o: .intDivision) : .integer,
    semCubeKey.init(op1: .float, op2: .double, o: .intDivision) : .integer,
    semCubeKey.init(op1: .float, op2: .Integer, o: .intDivision) : .Integer,
    
    // divisionInteger double
    semCubeKey.init(op1: .double, op2: .double, o: .intDivision) : .integer,
    semCubeKey.init(op1: .double, op2: .float, o: .intDivision) : .integer,
    semCubeKey.init(op1: .double, op2: .integer, o: .intDivision) : .integer,
    semCubeKey.init(op1: .double, op2: .Integer, o: .intDivision) : .Integer,
    
    // divisionInteger Integer
    semCubeKey.init(op1: .Integer, op2: .double, o: .intDivision) : .Integer,
    semCubeKey.init(op1: .Integer, op2: .float, o: .intDivision) : .Integer,
    semCubeKey.init(op1: .Integer, op2: .integer, o: .intDivision) : .Integer,
    semCubeKey.init(op1: .Integer, op2: .Integer, o: .intDivision) : .Integer,

]
