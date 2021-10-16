

import Cocoa

class CompilerErrorDelegate: CompilerParserError {
    func error(parser: CompilerParser, line: Int, column: Int, filename: String?, errorCode: Int, data: [String : AnyObject]?) {
        // Report error
        var infoPrint = ""
        switch errorCode {
        case 1:
            infoPrint += "Error de sintaxis"
        case 2:
            let tokens : [String] = data?["tokens"] as! [String]
            infoPrint += "ERROR_MISSINGTOKEN, posible token: \(tokens.first ?? "")"
            
        case 3:
            print("---------------")
            let tokens : [String] = data?["tokens"] as! [String]
            print("ERROR_MISSINGTOKENS, posibles opciones para recuperar: ")
            for i in tokens {
                print(i)
            }
            print("---------------")
        case 258:
            guard let dicVariable : [String:String] = data as? [String:String] else {return}
            guard let n = dicVariable["varRep"] else {return}
            infoPrint += "Var \(n) already exists"
            
        case 259:
            if (data?.isEmpty ?? false) {
                infoPrint += "Condition must be a boolean operator"
                break
            }
            guard let dicVariable : [String:NSNumber] = data as? [String:NSNumber] else {return}
            guard let t1 = dicVariable["t1"] else {return}
            guard let t2 = dicVariable["t2"] else {return}
            infoPrint += "Type mismatch between \(TypeSymbol(rawValue: t1.intValue) ?? .void) and \(TypeSymbol(rawValue: t2.intValue) ?? .void)"
        case 260:
            guard let dicVariable : [String:NSString] = data as? [String:NSString] else {return}
            guard let undeclaredID = dicVariable["undeclaredVar"] as? String else {return}
            infoPrint += "Undeclared var \(undeclaredID)"
        default:
            print("Error")
        }
        print(infoPrint + " en la linea: ", line + 1, " en la columna: ", column)
    }
}
