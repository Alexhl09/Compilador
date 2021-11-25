

/// Enum with all the possible Operators to be sent in quadruples
public enum Operator : Int {
    case sum
    case minus
    case multiply
    case division
    case modulo
    case intDivision
    case greaterThan
    case lessThan
    case greaterOrEqualThan
    case lessOrEqualThan
    case equal
    case different
    case and
    case or
    case assign
    case goto
    case gotof
    case gotot
    case read
    case print
    case noNil
    case endFunc
    case era
    case gosub
    case param
    case rtn
    case vrf
    case sumAd
}

extension Operator : CustomStringConvertible {
    /// Description of each operator
    public var description: String {
        switch self {
        case .sum:
            return "+"
        case .minus:
            return "-"
        case .multiply:
            return "*"
        case .division:
            return "/"
        case .modulo:
            return "%"
        case .intDivision:
            return "div"
        case .greaterThan:
            return ">"
        case .lessThan:
            return "<"
        case .greaterOrEqualThan:
            return ">="
        case .lessOrEqualThan:
            return "<="
        case .equal:
            return "=="
        case .different:
            return "!="
        case .and:
            return "&&"
        case .or:
            return "||"
        case .assign:
            return "="
        case .goto:
            return "GOTO"
        case .gotof:
            return "GOTOF"
        case .gotot:
            return "GOTOT"
        case .read:
            return "READ"
        case .print:
            return "PRINT"
        case .noNil:
            return "noNil"
        case .endFunc:
            return "ENDFUNC"
        case .era:
            return "ERA"
        case .gosub:
            return "GOSUB"
        case .param:
            return "PARAM"
        case .rtn:
            return "RETURN"
        case .vrf:
            return "VERIFY"
        case .sumAd:
            return "SUM ADDR"
        }
    }
}

