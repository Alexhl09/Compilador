
/* Simplify our definitions */
salto [\n\r|\r\n|\t\n|\n|\t| |\r]
ws {salto}+
letter [A-Za-z]
digit [0-9]
id ({letter}|_)({letter}|{digit}|_)*
CteI {digit}+
CteF {digit}+(\.{digit}+)
CteS \"+[A-Za-z0-9 \\^_\-%$()&*@#.']*\"+
SingleComment \/\/[^\n\r]+?(?:\*\)|[\n\r])

%%


{SingleComment}     { /* Skip comment */ }
"/*".*"*/"     { /* Skip comment */ }
{ws}    {/* Skip whitespace */}
"main"   {    return CompilerParser.MAIN}
"var"       {return  CompilerParser.VAR}
"func" {
    return CompilerParser.FUNC}
"float"    {
    value = NSNumber(integerLiteral: TypeVar.float.rawValue)
    return CompilerParser.FLOAT }
"double"    {
    value = NSNumber(integerLiteral:TypeVar.double.rawValue)
    return CompilerParser.DOUBLE }
"int"       {
    value = NSNumber(integerLiteral:TypeVar.integer.rawValue)
    return CompilerParser.INT}
"string"       {
    value = NSNumber(integerLiteral:TypeVar.string.rawValue)
    return CompilerParser.STR}
"print"   {return CompilerParser.PRINT}
"input"   {return CompilerParser.INPUT}
"char"    {
    value = NSNumber(integerLiteral:TypeVar.char.rawValue)
    return CompilerParser.CHAR}
"new"     {return CompilerParser.NEW}
"const"    {return CompilerParser.CONST}
"return"    {return CompilerParser.RTN}
"bool"    {
    value = NSNumber(integerLiteral:TypeVar.boolean.rawValue)
    return CompilerParser.BOOLEAN}
"Int"    {
    value = NSNumber(integerLiteral:TypeVar.Integer.rawValue)
    return CompilerParser.INTEGERCLASS}
"String"    {
    value = NSNumber(integerLiteral:TypeVar.String.rawValue)
    return CompilerParser.STRINGCLASS}
"while"    {return CompilerParser.WHILE}
"for"    {return CompilerParser.FOR}
"if"         {return CompilerParser.IF}
"else"    { return CompilerParser.ELSE }
"null"    { return CompilerParser.NLL }
","           {return CompilerParser.COMMA}
"="         {return CompilerParser.EQ}
"&&"         {return CompilerParser.AND}
"||"         {return CompilerParser.OR}
"<>"       {return CompilerParser.DIF}
"!"       {return CompilerParser.NOT}
"<"         {return CompilerParser.LT}
">"         {return CompilerParser.GT}
"{"          {
    print("NEW NODE")
    CompilerParser.st.newNode()
    return CompilerParser.LBRACE}
"}"          {
    print("BYE NODE")
    CompilerParser.st.pop()
    return CompilerParser.RBRACE}
\/           {return CompilerParser.DIVIDE}
\*           {return CompilerParser.TIMES}
"("          {return CompilerParser.LPAREN}
")"          {return CompilerParser.RPAREN}
"["          {return CompilerParser.LSBRAKE}
"]"          {return CompilerParser.RSBRAKE}
"+"          {return CompilerParser.PLUS}
"-"           {return CompilerParser.MINUS}
";"          {return CompilerParser.SEMICOLON}
":"          {return CompilerParser.COLON}
"?"          {return CompilerParser.QM}
"."          {return CompilerParser.DOT}
"..."          {return CompilerParser.CPTRG}
"..<"          {return CompilerParser.INCPTRG}
{CteF}   {
    value = NSNumber.init(value:Float(text) ?? 0)
    return CompilerParser.CTEF}
{CteI}   {
    value = NSNumber.init(value:Int(text) ?? 0)
    return CompilerParser.CTEI}
{CteS}  {
    value = NSString(string:text)
    return CompilerParser.CTES}
{id}        {
    value = NSString(string:text)
    return CompilerParser.ID}


.            {
                /* All else, return character value as token ID. */
                print("ERROR")
                print(text)
                return Int(text.unicodeScalars.first?.value ?? 0)
            }

