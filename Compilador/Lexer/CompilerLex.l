
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
"main"   {return CompilerParser.MAIN}
"var"       {return  CompilerParser.VAR}
"float"    {
    value = TypeVar.float as AnyObject?
    return CompilerParser.FLOAT }
"double"    {
    value = TypeVar.double as AnyObject?
    return CompilerParser.DOUBLE }
"int"       {
    value = TypeVar.integer as AnyObject?
    return CompilerParser.INT}
"string"       {
    value = TypeVar.string as AnyObject?
    return CompilerParser.STR}
"print"   {return CompilerParser.PRINT}
"input"   {return CompilerParser.INPUT}
"char"    {
    value = TypeVar.char as AnyObject?
    return CompilerParser.CHAR}
"new"     {return CompilerParser.NEW}
"const"    {return CompilerParser.CONST}
"return"    {return CompilerParser.RTN}
"bool"    {
    value = TypeVar.boolean as AnyObject?
    return CompilerParser.BOOLEAN}
"Int"    {
    value = TypeVar.Integer as AnyObject?
    return CompilerParser.INTEGERCLASS}
"String"    {
    value = TypeVar.String as AnyObject?
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
"{"          {return CompilerParser.LBRACE}
"}"          {return CompilerParser.RBRACE}
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
    print(value)
    return CompilerParser.CTEF}
{CteI}   {
    value = NSNumber.init(value:Int(text) ?? 0)
    print(value)
    return CompilerParser.CTEI}
{CteS}  {
    print(text)
    return CompilerParser.CTES}
{id}        {
    value = text as AnyObject?
    return CompilerParser.ID}


.            {
                /* All else, return character value as token ID. */
                print("ERROR")
                print(text)
                return Int(text.unicodeScalars.first?.value ?? 0)
            }

