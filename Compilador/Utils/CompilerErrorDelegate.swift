

import Cocoa

class CompilerErrorDelegate: CompilerParserError {
    func error(parser: CompilerParser, line: Int, column: Int, filename: String?, errorCode: Int, data: [String : AnyObject]?) {

    }
}
