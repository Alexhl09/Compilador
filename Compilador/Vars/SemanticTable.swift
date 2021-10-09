
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
    semCubeKey.init(op1: .float, op2: .float, o: .division) : .float,
    semCubeKey.init(op1: .integer, op2: .float, o: .division) : .float,
    semCubeKey.init(op1: .integer, op2: .integer, o: .division) : .integer,

]
