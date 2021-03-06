

#if os(macOS)
import Cocoa
#else
import UIKit
#endif

/// CompilerErrorDelegate is a delegate that send messeges to the user indicating where is the problem during compilation.
class CompilerErrorDelegate: CompilerParserError {
    func error(parser: CompilerParser, line: Int, column: Int, filename: String?, errorCode: Int, data: [String : AnyObject]?) {
        // Report error
        var infoPrint = ""
        switch errorCode {
        case 1:
            infoPrint += "Sintax error"
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
        case 261:
            guard let dicVariable : [String:NSString] = data as? [String:NSString] else {return}
            guard let nameFunc = dicVariable["id"] else {return}
            infoPrint += "Bad parameters for \(nameFunc)"
        case 262:
            infoPrint += "Not sufficient operands"
        case 263:
            infoPrint += "Jump stack empty"
        case 264:
            guard let dicVariable : [String:String] = data as? [String:String] else {return}
            guard let nameC = dicVariable["id"] else {return}
            infoPrint += "Constant \(nameC) already assigned"
        case 265:
            guard let dicVariable : [String:String] = data as? [String:String] else {return}
            guard let nameC = dicVariable["id"] else {return}
            infoPrint += "\(nameC) is not an array"
        default:
            print("Error")
        }
        print(infoPrint + " line: ", line + 1, " column: ", column)
        //exit(0)
        //Thread().cancel()
        //cancel()
    }
}
