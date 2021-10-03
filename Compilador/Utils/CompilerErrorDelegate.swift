

import Cocoa

class CompilerErrorDelegate: CompilerParserError {
    func error(parser: CompilerParser, line: Int, column: Int, filename: String?, errorCode: Int, data: [String : AnyObject]?) {
        // Report error
        switch errorCode {
        case 1:
            print("Error de sintaxis")
        case 2:
            let tokens : [String] = data?["tokens"] as! [String]
            print("ERROR_MISSINGTOKEN, posible token: \(tokens.first ?? "")")
            
        case 3:
            print("---------------")
            let tokens : [String] = data?["tokens"] as! [String]
            print("ERROR_MISSINGTOKENS, posibles opciones para recuperar: ")
            for i in tokens {
                print(i)
            }
            print("---------------")
        default:
            print("Error")
        }
        print(" en la linea: ", line, " en la columna: ", column)
    }
}
