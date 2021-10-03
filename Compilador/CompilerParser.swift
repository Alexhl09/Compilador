//  CompilerParser

import Cocoa




protocol CompilerParserError {
	func error(parser: CompilerParser, line: Int, column: Int, filename: String?, errorCode: Int, data: [String: AnyObject]?)
}

class CompilerParser {
	/*
	 *	Yacc Constants
	 */

	public static let AND                                           = 0x00110002
	public static let BOOLEAN                                       = 0x00110003
	public static let CHAR                                          = 0x00110004
	public static let COLON                                         = 0x00110005
	public static let COMMA                                         = 0x00110006
	public static let CONST                                         = 0x00110007
	public static let CPTRG                                         = 0x00110008
	public static let CTEF                                          = 0x00110009
	public static let CTEI                                          = 0x0011000a
	public static let CTES                                          = 0x0011000b
	public static let DIF                                           = 0x0011000c
	public static let DIVIDE                                        = 0x0011000d
	public static let DOUBLE                                        = 0x0011000e
	public static let ELSE                                          = 0x0011000f
	public static let EQ                                            = 0x00110010
	public static let FLOAT                                         = 0x00110011
	public static let FOR                                           = 0x00110012
	public static let GT                                            = 0x00110013
	public static let ID                                            = 0x00110014
	public static let IF                                            = 0x00110015
	public static let INCPTRG                                       = 0x00110016
	public static let INPUT                                         = 0x00110017
	public static let INT                                           = 0x00110018
	public static let INTEGERCLASS                                  = 0x00110019
	public static let LBRACE                                        = 0x0011001a
	public static let LCURLY                                        = 0x0011001b
	public static let LPAREN                                        = 0x0011001c
	public static let LSBRAKE                                       = 0x0011001d
	public static let LT                                            = 0x0011001e
	public static let MAIN                                          = 0x0011001f
	public static let MINUS                                         = 0x00110020
	public static let NEW                                           = 0x00110021
	public static let NLL                                           = 0x00110022
	public static let NOT                                           = 0x00110023
	public static let NUMBER                                        = 0x00110024
	public static let OR                                            = 0x00110025
	public static let PLUS                                          = 0x00110026
	public static let PRINT                                         = 0x00110027
	public static let QM                                            = 0x00110028
	public static let RBRACE                                        = 0x00110029
	public static let RPAREN                                        = 0x0011002a
	public static let RSBRAKE                                       = 0x0011002b
	public static let RTN                                           = 0x0011002c
	public static let SCURLY                                        = 0x0011002d
	public static let SEMICOLON                                     = 0x0011002e
	public static let STRINGCLASS                                   = 0x0011002f
	public static let TIMES                                         = 0x00110030
	public static let VAR                                           = 0x00110031
	public static let WHILE                                         = 0x00110032
	public static let arrayA                                        = 0x00110033
	public static let cadena                                        = 0x00110034
	public static let cuerpoReturnB                                 = 0x00110035
	public static let expresion                                     = 0x00110036
	public static let leer                                          = 0x00110037

	// Various constants
	private static let K_ACCEPTSTATE: UInt16 = 306         // Final accept state
	private static let K_EOFTOKEN: Int       = 0x110000     // EOF token ID
	private static let K_ERRORTOKEN: Int     = 0x110001     // Error token ID
	private static let K_FIRSTTOKEN: Int     = 0x110002     // Error token ID
	private static let K_MAXSYMBOL:Int       = 0x110060     // Max ID for all symbols
	private static let K_STARTSTATE: UInt16  = 0        // Start state is always 0

	/*  TokenArray
	 *
	 *      Array of non-Unicode token values for error reporting
	 */

	private static let TokenArray: [String] = [
		"AND",
		"BOOLEAN",
		"CHAR",
		"COLON",
		"COMMA",
		"CONST",
		"CPTRG",
		"CTEF",
		"CTEI",
		"CTES",
		"DIF",
		"DIVIDE",
		"DOUBLE",
		"ELSE",
		"EQ",
		"FLOAT",
		"FOR",
		"GT",
		"ID",
		"IF",
		"INCPTRG",
		"INPUT",
		"INT",
		"INTEGERCLASS",
		"LBRACE",
		"LCURLY",
		"LPAREN",
		"LSBRAKE",
		"LT",
		"MAIN",
		"MINUS",
		"NEW",
		"NLL",
		"NOT",
		"NUMBER",
		"OR",
		"PLUS",
		"PRINT",
		"QM",
		"RBRACE",
		"RPAREN",
		"RSBRAKE",
		"RTN",
		"SCURLY",
		"SEMICOLON",
		"STRINGCLASS",
		"TIMES",
		"VAR",
		"WHILE",
		"arrayA",
		"cadena",
		"cuerpoReturnB",
		"expresion",
		"leer"
	]

	/*  RuleLength
	 *
	 *      The number of tokens a reduce action removes from the stack
	 */

	private static let RuleLength: [UInt8] = [
		 1,  1,  2,  4,  4,  1,  1,  2, 
		 3,  1,  1,  2,  7,  7,  6,  3, 
		 5,  5,  3,  3,  3,  3,  3,  3, 
		 1,  2,  3,  1,  1,  1,  1,  1, 
		 1,  1,  1,  5,  2,  2,  1,  3, 
		 1,  2,  1,  1,  1,  1,  1,  1, 
		 1,  1,  5,  1,  3,  1,  1,  1, 
		 1,  1,  1,  1,  1,  1,  1,  1, 
		 6,  5,  4,  1,  3,  2,  4,  5, 
		 3,  3,  1,  1,  1,  1,  1,  1, 
		 1,  1,  1,  2,  3,  5,  4,  3, 
		 4,  3,  4
	]

	/*  RuleProduction
	 *
	 *      The prodution ID we reduce to
	 */

	private static let RuleProduction: [UInt32] = [
		0x110038, 0x110039, 0x110039, 0x11003a, 0x11003a, 0x11003b, 0x11003b, 0x11003c, 
		0x11003c, 0x11003d, 0x11003d, 0x11003d, 0x11003e, 0x11003f, 0x11003f, 0x110040, 
		0x110041, 0x110042, 0x110043, 0x110043, 0x110044, 0x110044, 0x110045, 0x110046, 
		0x110047, 0x110047, 0x110048, 0x110049, 0x110049, 0x110049, 0x110049, 0x110049, 
		0x110049, 0x110049, 0x110049, 0x11004a, 0x11004a, 0x11004b, 0x11004b, 0x11004c, 
		0x11004d, 0x11004d, 0x11004e, 0x11004e, 0x11004e, 0x11004e, 0x11004e, 0x11004e, 
		0x11004e, 0x11004e, 0x11004f, 0x110050, 0x110050, 0x110051, 0x110051, 0x110052, 
		0x110052, 0x110052, 0x110052, 0x110052, 0x110052, 0x110052, 0x110053, 0x110053, 
		0x110054, 0x110055, 0x110056, 0x110057, 0x110057, 0x110058, 0x110058, 0x110059, 
		0x110059, 0x11005a, 0x11005b, 0x11005b, 0x11005b, 0x11005c, 0x11005c, 0x11005c, 
		0x11005c, 0x11005c, 0x11005c, 0x11005d, 0x11005d, 0x11005d, 0x11005d, 0x11005e, 
		0x11005e, 0x11005f, 0x11005f
	]

	/*
	 *  The following tables are compressed using CSR format.
	 *  See https://en.wikipedia.org/wiki/Sparse_matrix
	 */

	/*  ActionI, J, A
	 *
	 *      Compressed action index table.
	 */

	private static let ActionI:[UInt32] = [
		     0,      9,     10,     11,     17,     18,     19,     21, 
		    22,     23,     24,     25,     26,     27,     28,     29, 
		    30,     31,     32,     37,     38,     39,     40,     41, 
		    42,     48,     49,     50,     51,     52,     54,     60, 
		    61,     63,     72,     81,     82,     83,     86,     87, 
		    88,     89,     90,     91,     92,     93,     94,     95, 
		    96,     97,     98,     99,    100,    101,    102,    103, 
		   109,    110,    111,    113,    114,    115,    116,    123, 
		   130,    137,    144,    151,    158,    159,    166,    173, 
		   180,    181,    182,    183,    184,    185,    191,    198, 
		   199,    206,    208,    210,    212,    213,    215,    217, 
		   218,    219,    226,    227,    228,    229,    236,    237, 
		   238,    240,    241,    248,    249,    250,    252,    253, 
		   260,    267,    269,    271,    272,    273,    274,    275, 
		   276,    283,    284,    285,    292,    293,    294,    295, 
		   296,    297,    304,    306,    307,    308,    309,    310, 
		   311,    312,    313,    314,    315,    316,    317,    319, 
		   320,    321,    322,    324,    326,    327,    328,    329, 
		   330,    331,    332,    333,    334,    335,    336,    337, 
		   338,    339,    340,    343,    344,    345,    346,    347, 
		   348,    349,    350,    351,    352,    353,    354,    355, 
		   356,    357,    358,    359,    360,    361,    362,    363, 
		   369,    370,    371,    372,    374,    375,    376,    377, 
		   378,    379,    380,    381,    382,    383,    384,    385, 
		   387,    388,    389,    390,    392,    394,    395,    396, 
		   397,    398,    399,    400,    401,    402,    403,    404, 
		   405,    406,    407,    408,    409,    410,    417,    418, 
		   419,    420,    430,    431,    437,    438,    441,    442, 
		   443,    444,    445,    446,    447,    448,    449,    450, 
		   451,    452,    453,    454,    455,    456,    457,    458, 
		   459,    460,    461,    462,    468,    469,    470,    471, 
		   473,    474,    475,    476,    478,    479,    481,    482, 
		   483,    484,    485,    486,    487,    488,    489,    490, 
		   491,    492,    494,    495,    496,    497,    499,    500, 
		   501,    502,    503,    504,    505,    506,    507,    508, 
		   509,    510,    511,    512,    513,    514,    515,    516, 
		   517,    518,    519,    520,    521,    523,    524,    525, 
		   526,    527,    529,    530,    536,    537,    538,    548, 
		   549,    550,    551,    552,    553,    554,    556,    557, 
		   558,    559,    561,    562,    563,    564,    565,    566, 
		   567,    569,    570,    571,    572
	]

	private static let ActionJ:[UInt32] = [
		0x110003, 0x110004, 0x110007, 0x11000e, 0x110011, 0x110014, 0x110018, 0x11002f, 
		0x110031, 0x110014, 0x110014, 0x110003, 0x110004, 0x11000e, 0x110011, 0x110018, 
		0x11002f, 0x110014, 0x110014, 0x110014, 0x11001c, 0x110014, 0x110014, 0x110014, 
		0x11001f, 0x11001f, 0x11001f, 0x110000, 0x11002e, 0x110014, 0x110014, 0x11002e, 
		0x110007, 0x110014, 0x110018, 0x11002f, 0x110031, 0x110014, 0x110014, 0x110014, 
		0x11002e, 0x11001c, 0x110003, 0x110004, 0x11000e, 0x110011, 0x110018, 0x11002f, 
		0x110014, 0x110014, 0x11002a, 0x110014, 0x110006, 0x11002a, 0x110003, 0x110004, 
		0x11000e, 0x110011, 0x110018, 0x11002f, 0x11002a, 0x11001d, 0x110035, 0x110007, 
		0x110012, 0x110014, 0x110015, 0x110018, 0x110027, 0x11002f, 0x110031, 0x110032, 
		0x110007, 0x110012, 0x110014, 0x110015, 0x110018, 0x110027, 0x11002f, 0x110031, 
		0x110032, 0x11001f, 0x11001c, 0x110010, 0x110014, 0x11001d, 0x11001c, 0x11001c, 
		0x11001c, 0x11001f, 0x11001f, 0x11001f, 0x11001f, 0x11001f, 0x11001f, 0x11001f, 
		0x11001f, 0x11001f, 0x11002e, 0x11001f, 0x110036, 0x11002a, 0x11001d, 0x110012, 
		0x110014, 0x110015, 0x110027, 0x110032, 0x110037, 0x11001f, 0x11001c, 0x110010, 
		0x11001d, 0x11001c, 0x11001c, 0x11001c, 0x110012, 0x110014, 0x110015, 0x110027, 
		0x11002b, 0x110032, 0x110037, 0x110012, 0x110014, 0x110015, 0x110027, 0x11002b, 
		0x110032, 0x110037, 0x110012, 0x110014, 0x110015, 0x110027, 0x11002b, 0x110032, 
		0x110037, 0x110012, 0x110014, 0x110015, 0x110027, 0x11002b, 0x110032, 0x110037, 
		0x110012, 0x110014, 0x110015, 0x110027, 0x11002b, 0x110032, 0x110037, 0x110012, 
		0x110014, 0x110015, 0x110027, 0x11002b, 0x110032, 0x110037, 0x11002b, 0x110012, 
		0x110014, 0x110015, 0x110027, 0x11002b, 0x110032, 0x110037, 0x110012, 0x110014, 
		0x110015, 0x110027, 0x11002b, 0x110032, 0x110037, 0x110012, 0x110014, 0x110015, 
		0x110027, 0x11002b, 0x110032, 0x110037, 0x11002b, 0x11001f, 0x110036, 0x11002a, 
		0x11001d, 0x110012, 0x110014, 0x110015, 0x110027, 0x110032, 0x110037, 0x110012, 
		0x110014, 0x110015, 0x110027, 0x11002b, 0x110032, 0x110037, 0x11002b, 0x110012, 
		0x110014, 0x110015, 0x110027, 0x11002b, 0x110032, 0x110037, 0x110034, 0x110036, 
		0x110006, 0x11002a, 0x110006, 0x11002a, 0x11002a, 0x110006, 0x11002a, 0x110034, 
		0x110036, 0x11002a, 0x11002e, 0x110012, 0x110014, 0x110015, 0x110027, 0x11002b, 
		0x110032, 0x110037, 0x110036, 0x11002a, 0x11001d, 0x110012, 0x110014, 0x110015, 
		0x110027, 0x11002b, 0x110032, 0x110037, 0x110036, 0x110036, 0x110006, 0x11002b, 
		0x11002b, 0x110012, 0x110014, 0x110015, 0x110027, 0x11002b, 0x110032, 0x110037, 
		0x110036, 0x11002b, 0x110014, 0x11002e, 0x11001d, 0x110012, 0x110014, 0x110015, 
		0x110027, 0x11002b, 0x110032, 0x110037, 0x110012, 0x110014, 0x110015, 0x110027, 
		0x11002b, 0x110032, 0x110037, 0x110014, 0x11002e, 0x110005, 0x110010, 0x110036, 
		0x11002e, 0x110036, 0x11002a, 0x11001d, 0x110012, 0x110014, 0x110015, 0x110027, 
		0x11002b, 0x110032, 0x110037, 0x11002a, 0x11001d, 0x110012, 0x110014, 0x110015, 
		0x110027, 0x11002b, 0x110032, 0x110037, 0x110014, 0x11000a, 0x11002e, 0x11002a, 
		0x11001d, 0x110012, 0x110014, 0x110015, 0x110027, 0x11002b, 0x110032, 0x110037, 
		0x110034, 0x110036, 0x11002a, 0x11002e, 0x11001f, 0x110036, 0x11002a, 0x11001d, 
		0x11001f, 0x110036, 0x110036, 0x11002b, 0x11001f, 0x110014, 0x11002e, 0x11001d, 
		0x11001f, 0x11001f, 0x110014, 0x11002e, 0x110005, 0x110010, 0x110036, 0x11002e, 
		0x110036, 0x11002a, 0x11001d, 0x11001f, 0x11002a, 0x11001d, 0x11001f, 0x110014, 
		0x11002a, 0x11001d, 0x11001f, 0x11001c, 0x110010, 0x110014, 0x11001d, 0x11001c, 
		0x11001c, 0x11001c, 0x11002c, 0x11002c, 0x11002c, 0x11002c, 0x11002c, 0x11002c, 
		0x11002c, 0x11002c, 0x11002c, 0x11002e, 0x11002c, 0x110036, 0x11002b, 0x11001f, 
		0x110036, 0x11002a, 0x11001d, 0x110012, 0x110014, 0x110015, 0x110027, 0x110032, 
		0x110037, 0x11002c, 0x11002b, 0x11002c, 0x110034, 0x110036, 0x11002a, 0x11002e, 
		0x11002c, 0x110036, 0x11002a, 0x11001d, 0x11002c, 0x110036, 0x110036, 0x11002b, 
		0x11002c, 0x110014, 0x11002e, 0x11001d, 0x11002c, 0x11002c, 0x110014, 0x11002e, 
		0x110005, 0x110010, 0x110036, 0x11002e, 0x110036, 0x11002a, 0x11001d, 0x11002c, 
		0x11002a, 0x11001d, 0x11002c, 0x110014, 0x11002a, 0x11001d, 0x11002c, 0x110010, 
		0x110036, 0x11002e, 0x110003, 0x110004, 0x11000e, 0x110011, 0x110014, 0x110018, 
		0x11002f, 0x11001c, 0x11001f, 0x11001a, 0x110007, 0x110012, 0x110014, 0x110015, 
		0x110018, 0x110027, 0x11002f, 0x110031, 0x110032, 0x110037, 0x110000, 0x110003, 
		0x110004, 0x11000e, 0x110011, 0x110018, 0x11002f, 0x11001c, 0x110010, 0x110014, 
		0x11001d, 0x11001c, 0x11001c, 0x110014, 0x11001c, 0x110029, 0x110029, 0x110029, 
		0x110029, 0x110029, 0x110029, 0x110029, 0x110029, 0x110014, 0x110029, 0x110010, 
		0x110036, 0x110029, 0x110000, 0x110036, 0x11002a, 0x11001d, 0x110012, 0x110014, 
		0x110015, 0x110027, 0x110032, 0x110037, 0x110029, 0x11002b, 0x110029, 0x11001a, 
		0x110029, 0x11000a, 0x110029, 0x110029, 0x11001a, 0x110029, 0x110029, 0x110034, 
		0x110036, 0x11002a, 0x11002e, 0x110029, 0x110036, 0x11002a, 0x11001d, 0x110029, 
		0x110036, 0x110036, 0x11002b, 0x110029, 0x110014, 0x11002e, 0x11001d, 0x110029, 
		0x110029, 0x110014, 0x11002e, 0x110010, 0x110036, 0x11002e, 0x110036, 0x11002a, 
		0x11001d, 0x110029, 0x11002a, 0x11001d, 0x110029, 0x11001a, 0x11001a, 0x11001a, 
		0x11001a, 0x11001a, 0x11001a, 0x11001a, 0x11000a, 0x110010, 0x11001a, 0x110036, 
		0x110029, 0x110006, 0x110029, 0x110029, 0x110029, 0x110029, 0x110029, 0x110010, 
		0x11001a, 0x110010, 0x110003, 0x110004, 0x11000e, 0x110011, 0x110018, 0x11002f, 
		0x11002a, 0x11001a, 0x110007, 0x110012, 0x110014, 0x110015, 0x110018, 0x110027, 
		0x11002f, 0x110031, 0x110032, 0x110037, 0x11001f, 0x110029, 0x11001f, 0x110000, 
		0x11001a, 0x110000, 0x11001a, 0x11002e, 0x11000a, 0x11002e, 0x110029, 0x11001a, 
		0x11002e, 0x11002e, 0x11001a, 0x110010, 0x11001a, 0x110036, 0x11002e, 0x110006, 
		0x110029, 0x110029, 0x11002e, 0x11002e
	]

	// Note: < 0 -> reduce (rule = -a-1), >= 0 -> shift (state).
	private static let ActionA:[Int16] = [
		     1,      2,      3,      4,      5,      6,      7,      8, 
		     9,    -82,    -81,    280,    281,    282,    283,    284, 
		   285,    -80,    -79,    -77,    299,    -75,    -76,    309, 
		   307,    -64,    -63,    306,    213,    210,     23,     18, 
		     3,     19,     20,     21,      9,    -77,    -75,    -76, 
		   -74,     24,      1,      2,      4,      5,     25,     26, 
		   -78,    -83,     32,     29,     30,    -70,      1,      2, 
		     4,      5,     25,     26,    -71,     33,     34,      3, 
		   153,    154,    155,     20,    156,     21,      9,    157, 
		     3,     36,     37,     38,     20,     39,     21,      9, 
		    40,    -65,    138,    130,    -77,    131,    126,    122, 
		    52,    -56,    -62,    -61,    -60,    -59,    -37,    -58, 
		   -39,    -57,     51,    -38,     53,     54,     55,     57, 
		    58,     59,     60,     61,     62,    -17,    105,     94, 
		    95,     90,     81,     74,    -45,    -45,    -45,    -45, 
		   -45,    -45,    -45,    -43,    -43,    -43,    -43,    -43, 
		   -43,    -43,    -50,    -50,    -50,    -50,    -50,    -50, 
		   -50,    -49,    -49,    -49,    -49,    -49,    -49,    -49, 
		   -48,    -48,    -48,    -48,    -48,    -48,    -48,    -47, 
		   -47,    -47,    -47,    -47,    -47,    -47,     73,     57, 
		    58,     59,     60,    -41,     61,     62,    -46,    -46, 
		   -46,    -46,    -46,    -46,    -46,    -44,    -44,    -44, 
		   -44,    -44,    -44,    -44,    -42,    -40,     75,     76, 
		    77,     57,     58,     59,     60,     61,     62,    -17, 
		   -17,    -17,    -17,    -17,    -17,    -17,     80,    -40, 
		   -40,    -40,    -40,    -40,    -40,    -40,     82,     83, 
		   -55,    -55,    -54,    -54,     88,     86,    -52,     82, 
		    83,    -53,     89,    -51,    -51,    -51,    -51,    -51, 
		   -51,    -51,     91,     92,     77,    -18,    -18,    -18, 
		   -18,    -18,    -18,    -18,    101,     96,     99,    -68, 
		    98,    -67,    -67,    -67,    -67,    -67,    -67,    -67, 
		    96,    -69,    102,    103,     95,     -4,     -4,     -4, 
		    -4,     -4,     -4,     -4,     -5,     -5,     -5,     -5, 
		    -5,     -5,     -5,    106,    107,    116,    117,    113, 
		   109,    110,    111,     77,    -14,    -14,    -14,    -14, 
		   -14,    -14,    -14,    114,     77,    -15,    -15,    -15, 
		   -15,    -15,    -15,    -15,    119,    118,    -16,    120, 
		    77,    -13,    -13,    -13,    -13,    -13,    -13,    -13, 
		    82,     83,    124,    125,    -51,    127,    128,     55, 
		   -18,    134,     96,    133,    -67,    135,    136,    131, 
		    -4,     -5,    139,    140,    149,    117,    146,    142, 
		   143,    144,     55,    -14,    147,     55,    -15,    150, 
		   151,     55,    -13,    195,    187,    -77,    188,    183, 
		   179,    172,    -56,    -62,    -61,    -60,    -59,    169, 
		   -58,    -39,    -57,    168,    -38,    170,    171,    -36, 
		   173,    174,    175,     57,     58,     59,     60,     61, 
		    62,    -17,    178,    -40,     82,     83,    181,    182, 
		   -51,    184,    185,    175,    -18,    191,     96,    190, 
		   -67,    192,    193,    188,     -4,     -5,    196,    197, 
		   206,    117,    203,    199,    200,    201,    175,    -14, 
		   204,    175,    -15,    207,    208,    175,    -13,    211, 
		   212,    -87,      1,      2,      4,      5,    214,     25, 
		    26,    299,    216,    217,    219,    220,    221,    222, 
		    20,    223,     21,    224,    225,    226,    -72,    280, 
		   281,    282,    283,    284,    285,    269,    261,    -77, 
		   262,    257,    253,    247,    240,    -31,    -29,    -35, 
		   -34,    -33,    239,    -32,    -30,    236,    -28,    237, 
		   238,    -87,    -27,    241,    242,    243,     57,     58, 
		    59,     60,     61,     62,    -17,    246,    -40,    248, 
		   -84,    250,    -85,    251,    248,    -90,    -91,     82, 
		    83,    255,    256,    -51,    258,    259,    243,    -18, 
		   265,     96,    264,    -67,    266,    267,    262,     -4, 
		    -5,    270,    271,    117,    277,    273,    274,    275, 
		   243,    -14,    278,    243,    -15,    -82,    -81,    -80, 
		   -79,    -78,    -83,    287,    296,    289,    290,    292, 
		   -86,    293,    294,    295,    -88,    -89,    297,    -90, 
		   287,    -91,      1,      2,      4,      5,     25,     26, 
		   301,    302,    219,    220,    221,    222,     20,    223, 
		    21,    224,    225,    226,    -66,    305,    -27,     -1, 
		   217,    -73,    310,    -84,    312,    -85,    313,    310, 
		   -90,    -91,    287,    317,    318,    320,    -86,    321, 
		   322,    323,    -88,    -89
	]

	/*  GotoI, J, A
	 *
	 *      Compressed goto table.
	 */

	private static let GotoI:[UInt32] = [
		     0,      8,      8,      8,      9,      9,      9,      9, 
		     9,      9,      9,      9,      9,      9,      9,      9, 
		     9,      9,      9,     12,     12,     12,     12,     12, 
		    12,     14,     14,     14,     14,     14,     14,     16, 
		    16,     17,     28,     39,     39,     39,     39,     39, 
		    39,     39,     39,     39,     39,     39,     39,     39, 
		    39,     39,     39,     39,     39,     39,     39,     40, 
		    49,     49,     49,     49,     49,     49,     49,     49, 
		    49,     49,     49,     49,     49,     49,     58,     58, 
		    58,     58,     58,     58,     58,     59,     68,     68, 
		    68,     68,     70,     70,     70,     70,     70,     72, 
		    72,     72,     72,     72,     72,     73,     73,     73, 
		    74,     74,     74,     74,     75,     75,     76,     76, 
		    76,     76,     77,     77,     77,     77,     77,     77, 
		    78,     78,     78,     79,     79,     79,     79,     79, 
		    79,     80,     80,     82,     82,     82,     82,     82, 
		    82,     83,     83,     83,     84,     84,     84,     85, 
		    85,     85,     85,     86,     86,     86,     86,     86, 
		    86,     87,     87,     87,     88,     88,     88,     88, 
		    89,     89,     89,     89,     89,     89,     89,     89, 
		    89,     89,     89,     89,     89,     89,     89,     89, 
		    89,     89,     89,     89,     89,     89,     89,     90, 
		    99,     99,     99,     99,    101,    101,    101,    101, 
		   101,    101,    102,    102,    102,    103,    103,    103, 
		   104,    104,    104,    104,    105,    105,    105,    105, 
		   105,    105,    106,    106,    106,    107,    107,    107, 
		   107,    108,    108,    108,    108,    108,    112,    112, 
		   112,    113,    122,    122,    123,    123,    123,    123, 
		   123,    123,    123,    123,    123,    123,    123,    123, 
		   123,    123,    123,    123,    123,    123,    123,    123, 
		   123,    123,    123,    124,    133,    133,    133,    133, 
		   134,    134,    134,    134,    135,    135,    137,    137, 
		   137,    137,    137,    137,    138,    138,    138,    139, 
		   139,    139,    140,    140,    140,    140,    141,    141, 
		   141,    141,    141,    141,    142,    142,    142,    143, 
		   143,    143,    143,    143,    143,    143,    143,    144, 
		   144,    144,    145,    145,    145,    145,    145,    145, 
		   145,    145,    146,    146,    148,    148,    149,    158, 
		   158,    158,    158,    158,    159,    159,    160,    160, 
		   160,    160,    161,    161,    162,    162,    163,    163, 
		   163,    163,    163,    163,    163
	]

	private static let GotoJ:[UInt32] = [
		0x110053, 0x110054, 0x110055, 0x110059, 0x11005a, 0x11005b, 0x11005c, 0x11005d, 
		0x11005c, 0x11005a, 0x11005b, 0x11005d, 0x110058, 0x11005c, 0x110058, 0x11005c, 
		0x11004a, 0x11003a, 0x11003e, 0x11003f, 0x110041, 0x110042, 0x11004b, 0x11004f, 
		0x110052, 0x110056, 0x11005b, 0x11005d, 0x11003a, 0x11003e, 0x11003f, 0x110041, 
		0x110042, 0x11004b, 0x11004f, 0x110052, 0x110056, 0x11005b, 0x11005d, 0x11004c, 
		0x11003a, 0x11003e, 0x11003f, 0x110041, 0x110042, 0x11004d, 0x11004e, 0x11004f, 
		0x110056, 0x11003a, 0x11003e, 0x11003f, 0x110041, 0x110042, 0x11004d, 0x11004e, 
		0x11004f, 0x110056, 0x11004c, 0x11003a, 0x11003e, 0x11003f, 0x110041, 0x110042, 
		0x11004d, 0x11004e, 0x11004f, 0x110056, 0x110050, 0x110051, 0x110050, 0x110051, 
		0x11004c, 0x110057, 0x110057, 0x110056, 0x110040, 0x11004c, 0x11004c, 0x11004c, 
		0x110050, 0x110051, 0x11004c, 0x110057, 0x110056, 0x110040, 0x11004c, 0x11004c, 
		0x11004c, 0x11004c, 0x11003a, 0x11003e, 0x11003f, 0x110041, 0x110042, 0x11004d, 
		0x11004e, 0x11004f, 0x110056, 0x110050, 0x110051, 0x11004c, 0x110057, 0x110056, 
		0x110040, 0x11004c, 0x11004c, 0x11004c, 0x110053, 0x110054, 0x110055, 0x11005c, 
		0x110048, 0x11003a, 0x11003f, 0x110041, 0x110042, 0x110049, 0x11004f, 0x110056, 
		0x11005b, 0x11005d, 0x11005c, 0x11004c, 0x11003a, 0x11003e, 0x11003f, 0x110041, 
		0x110042, 0x11004d, 0x11004e, 0x11004f, 0x110056, 0x11005f, 0x11005f, 0x110050, 
		0x110051, 0x11004c, 0x110057, 0x110056, 0x110040, 0x11004c, 0x11004c, 0x11005f, 
		0x11005e, 0x11005f, 0x110058, 0x11005c, 0x110048, 0x11003a, 0x11003f, 0x110041, 
		0x110042, 0x110049, 0x11004f, 0x110056, 0x11005b, 0x11005d, 0x110048, 0x11005f, 
		0x11005f, 0x11005f, 0x11005e
	]

	private static let GotoA:[Int16] = [
		    10,     11,     12,     13,     14,     15,     16,     17, 
		   315,     22,     15,     17,     27,     28,     31,     28, 
		    35,    158,    159,    160,    161,    162,    163,    164, 
		   165,    166,     15,    167,     41,     42,     43,     44, 
		    45,     46,     47,     48,     49,     15,     50,     56, 
		    63,     64,     65,     66,     67,     68,     69,     70, 
		    71,     63,     64,     65,     66,     67,     72,     69, 
		    70,     71,     78,     63,     64,     65,     66,     67, 
		    79,     69,     70,     71,     84,     85,     87,     85, 
		    93,     97,    100,    104,    108,    112,    115,    121, 
		   123,     85,    129,    132,    137,    141,    145,    148, 
		   152,    176,     63,     64,     65,     66,     67,    177, 
		    69,     70,     71,    180,     85,    186,    189,    194, 
		   198,    202,    205,    209,    215,     11,     12,     16, 
		   218,    227,    228,    229,    230,    231,    232,    233, 
		   234,    235,    286,    244,     63,     64,     65,     66, 
		    67,    245,     69,     70,     71,    249,    252,    254, 
		    85,    260,    263,    268,    272,    276,    279,    288, 
		   291,    298,    300,     28,    303,    227,    228,    229, 
		   230,    304,    232,    233,    234,    235,    308,    311, 
		   314,    316,    319
	]


	
	

	/*
	 *	Error Values
	 */

	public static let ERRORMASK_WARNING = 0x8000
	public static let ERROR_SYNTAX = 0x0001
	public static let ERROR_MISSINGTOKEN = 0x0002
	public static let ERROR_MISSINGTOKENS = 0x0003
	public static let ERROR_STARTERRORID = 0x0100

    

	/*
	 *	Stack
	 */

	private struct Stack {
		var state: UInt16
		var line: Int
		var column: Int
		var filename: String?
		var value: AnyObject?

		init()
		{
			state = 0
			line = 0
			column = 0
			filename = nil
			value = nil
		}
	}

	/*
	 *	Internal values
	 */

	private var stack: [Stack]
	private var lex: OCLexInput

	// Error support
	private var success: Bool
	private var errorCount: Int

	private var hasError: Bool
	private var errorLine: Int
	private var errorColumn: Int
	private var errorFileName: String?

	// Delegate
	public var errorDelegate: CompilerParserError?


	/*
	 *	Startup
	 */

	public init(lexer: OCLexInput)
	{
		lex = lexer

		stack = Array()
		success = true
		errorCount = 0;
		hasError = false
		errorLine = 0
		errorColumn = 0
		errorFileName = nil
		errorDelegate = nil

        
	}

	deinit {
	    
	}

	/*
	 *	Process production rule. This processes the production rule and creates
	 *	a new stack state with the rule reduction.
	 */

	private func processReduction(_ rule: Int16) -> CompilerParser.Stack
	{
		// Get production len, for translating $1...$N into something useful
		let pos = stack.count - Int(CompilerParser.RuleLength[Int(rule)])

		// Set up initial state.
		var s = CompilerParser.Stack()

		// File position of reduced rule is first token of the symbols reduced
		let fs = stack[pos]
		s.filename = fs.filename;
		s.line = fs.line;
		s.column = fs.column;

		do {
			try reduction(rule: rule, at: pos, with: &s)
		} catch {
			// Ignore errors. Can happen when the stack is in an error state
		}

		return s
	}

	private func reduction(rule: Int16, at pos: Int, with s: inout CompilerParser.Stack) throws
	{
		// Now process production.
		//
		// Note that $$ translated into (s.value), and
		// $n translates into ((<type> *)(self.stack[pos+(n-1)])), where <type>
		// is the declared type of the token or production rule.

		// Note: value is AnyObject, but we use as! cast to coerce, and assume
		// the exception is caught and ignored if it all goes south.
		switch rule {

        // Production rules
            // (110038) $accept : programa $end
            // (110039) array : arrayA 
            // (110039) array : arrayA arrayA 
            // (11003a) asignar : ID EQ expresion SEMICOLON 
            // (11003a) asignar : ID EQ expresion llamada 
            // (11003b) cV : cVA 
            // (11003b) cV : flujoBloque 
            // (11003c) cVA : vars SEMICOLON 
            // (11003c) cVA : vars SEMICOLON cVA 
            // (11003d) cVR : cVA 
            // (11003d) cVR : flujoBloque 
            // (11003d) cVR : RTN SEMICOLON 
            // (11003e) cicloForEach : FOR LPAREN ID COLON ID RPAREN cuerpoSinVars 
            // (11003f) cicloForIterador : FOR LPAREN cicloForIteradorA SEMICOLON expresion RPAREN cuerpoSinVars 
            // (11003f) cicloForIterador : FOR LPAREN SEMICOLON expresion RPAREN cuerpoSinVars 
            // (110040) cicloForIteradorA : ID EQ CTEI 
            // (110041) cicloWhile : WHILE LPAREN expresion RPAREN cuerpoSinVars 
            // (110042) condicion : IF LPAREN expresion RPAREN cuerpoSinVars 
            // (110043) const : CONST constA expresion 
            // (110043) const : CONST constB expresion 
            // (110044) constA : tipoSimple ID EQ 
            // (110044) constA : tipoSimple expresion EQ 
            // (110045) constB : tipoCompuesto ID EQ 
            // (110046) csv : LSBRAKE csvA RSBRAKE 
            // (110047) csvA : flujoBloque 
            // (110047) csvA : flujoBloque csvA 
            // (110048) cuerpo : LBRACE cuerpoLista RBRACE 
            // (110049) cuerpoLista : vars 
            // (110049) cuerpoLista : asignar 
            // (110049) cuerpoLista : llamada 
            // (110049) cuerpoLista : leer 
            // (110049) cuerpoLista : escribir 
            // (110049) cuerpoLista : condicion 
            // (110049) cuerpoLista : cicloWhile 
            // (110049) cuerpoLista : cicloForIterador 
            // (11004a) cuerpoReturn : LSBRAKE cuerpoReturnA RTN expresion RSBRAKE 
            // (11004a) cuerpoReturn : cuerpoReturnB cuerpoReturnA 
            // (11004b) cuerpoReturnA : vars SEMICOLON 
            // (11004b) cuerpoReturnA : flujoBloque 
            // (11004c) cuerpoSinVars : LSBRAKE cuerpoSinVarsA RSBRAKE 
            // (11004d) cuerpoSinVarsA : cuerpoSinVarsLista 
            // (11004d) cuerpoSinVarsA : cuerpoSinVarsLista cuerpoSinVarsA 
            // (11004e) cuerpoSinVarsLista : asignar 
            // (11004e) cuerpoSinVarsLista : llamada 
            // (11004e) cuerpoSinVarsLista : leer 
            // (11004e) cuerpoSinVarsLista : escribir 
            // (11004e) cuerpoSinVarsLista : condicion 
            // (11004e) cuerpoSinVarsLista : cicloWhile 
            // (11004e) cuerpoSinVarsLista : cicloForIterador 
            // (11004e) cuerpoSinVarsLista : cicloForEach 
            // (11004f) escribir : PRINT LPAREN escribirA RPAREN SEMICOLON 
            // (110050) escribirA : escribirB 
            // (110050) escribirA : escribirB COMMA escribirA 
            // (110051) escribirB : expresion 
            // (110051) escribirB : cadena 
            // (110052) flujoBloque : asignar 
            // (110052) flujoBloque : llamada 
            // (110052) flujoBloque : escribir 
            // (110052) flujoBloque : condicion 
            // (110052) flujoBloque : cicloWhile 
            // (110052) flujoBloque : cicloForIterador 
            // (110052) flujoBloque : cicloForEach 
            // (110053) funciones : funcionesVoid 
            // (110053) funciones : funcionesReturn 
            // (110054) funcionesReturn : tipoSimple ID LPAREN params RPAREN cuerpoReturn 
            // (110055) funcionesVoid : ID LPAREN params RPAREN cuerpo 
            // (110056) llamada : ID LSBRAKE llamadaA RSBRAKE 
            // (110057) llamadaA : expresion 
            // (110057) llamadaA : expresion COMMA llamadaA 
            // (110058) params : tipoSimple ID 
            // (110058) params : tipoSimple ID COMMA params 
            // (110059) programa : programaPrimo SEMICOLON funciones MAIN cuerpo 
            // (110059) programa : funciones MAIN cuerpo 
            // (11005a) programaPrimo : vars SEMICOLON programaPrimo 
            // (11005b) tipoCompuesto : INT 
            // (11005b) tipoCompuesto : STRINGCLASS 
            // (11005b) tipoCompuesto : ID 
            // (11005c) tipoSimple : INT 
            // (11005c) tipoSimple : FLOAT 
            // (11005c) tipoSimple : DOUBLE 
            // (11005c) tipoSimple : CHAR 
            // (11005c) tipoSimple : BOOLEAN 
            // (11005c) tipoSimple : STRINGCLASS 
            // (11005d) vars : VAR ID 
            // (11005d) vars : VAR ID varsPrimaArreglos 
            // (11005d) vars : CONST tipoSimple varsPrimaArreglos EQ varsPrima 
            // (11005d) vars : tipoCompuesto ID EQ expresion 
            // (11005e) varsPrima : LBRACE expresion RBRACE 
            // (11005e) varsPrima : LBRACE expresion COMMA RBRACE 
            // (11005f) varsPrimaArreglos : LBRACE CTEI RBRACE 
            // (11005f) varsPrimaArreglos : LBRACE CTEI RBRACE varsPrimaArreglos 

			default:
				break
		}
	}

	private func actionForState(_ state: UInt16, token t: Int) -> Int
	{
		var min,max,mid: Int

		let token = (t == -1) ? CompilerParser.K_EOFTOKEN : t

		/* Find range */
		min = Int(CompilerParser.ActionI[Int(state)])
		max = Int(CompilerParser.ActionI[Int(state)+1])

		/* Binary search for value in ja */
		while min < max {
			mid = (min + max)/2
			let j = CompilerParser.ActionJ[mid]
			if token == j {
				return Int(CompilerParser.ActionA[mid])
			} else if token < j {
				max = mid
			} else {
				min = mid + 1
			}
		}
		return Int.max
	}

	/*
	 *	Look up the goto value for the state and token (production rule) provided.
	 *	Operates the same as actionForState, except we look in the goto table.
	 *	In teory I guess we could combine these two tables (as productions and
	 *	tokens do not overlap).
	 */

	private func goto(state: UInt16, production token: UInt32) -> Int
	{
		var min,max,mid: Int

		/* Find range */
		min = Int(CompilerParser.GotoI[Int(state)])
		max = Int(CompilerParser.GotoI[Int(state)+1])

		/* Binary search for value in ja */
		while min < max {
			mid = (min + max)/2
			let j = CompilerParser.GotoJ[mid]
			if token == j {
				return Int(CompilerParser.GotoA[mid])
			} else if token < j {
				max = mid
			} else {
				min = mid + 1
			}
		}
		return Int.max
	}

	/*
	 *	Errors. This formats and prints the specified error
	 */

	private func error(code: Int, data: [String: AnyObject])
	{
		if errorDelegate == nil {	// No error handling, ignore.
			return
		}
		if errorCount > 0 {			// skip until synced on 3 shifts
			return
		}

		// Call delegate with current token position
		// Token position is the topmost symbol

		if hasError {
			errorDelegate?.error(parser: self, line: errorLine, column: errorColumn, filename: errorFileName, errorCode: code, data: data)
		} else {
			if let top = stack.last {
				errorDelegate?.error(parser: self, line: top.line, column: top.column, filename: top.filename, errorCode: code, data: data)
			}
		}

		if 0 == (code & CompilerParser.ERRORMASK_WARNING) {
			success = false
			errorCount = 3
		}
	}

	private func error(code: Int)
	{
		error(code: code, data: [:])
	}

	private func errorOK()
	{
		errorCount = 0
	}

	private func tokenToString(_ token: UInt32) -> String
	{
		if token >= CompilerParser.K_FIRSTTOKEN {
			return CompilerParser.TokenArray[Int(token) - CompilerParser.K_FIRSTTOKEN]
		} else {
			return String.init(Unicode.Scalar(token) ?? Unicode.Scalar.init(UInt8(32)))
		}
	}

	private func reduce(action: Int16) -> Bool
	{
		// Determine the new state we're transitioning to.
		let production = CompilerParser.RuleProduction[Int(action)]
		let length = CompilerParser.RuleLength[Int(action)]

		// We pull the state we'd have after popping the stack.
		let statep = stack[stack.count - Int(length) - 1].state

		// Calculate the state we should transition to
		let newState = goto(state: statep, production: production)
		if newState == Int.max {
			return false
		}

		// Process reduction rule
		var state = processReduction(action)

		// Update state
		state.state = UInt16(newState)

		// Pop the stack
		stack.removeSubrange(stack.count - Int(length) ..< stack.count)

		// Push new state
		stack.append(state)

		// Clear error marker
		hasError = false

		// Return success
		return true
	}



	/*
	 *	Parser engine. Returns NO if there was an error during processing. Note
	 *	that as we uncover errors we call our delegate for error handling. This
	 *	implements the algorithm described in the Dragon Book, Algorithm 4.7.
	 */

	public func parse() -> Bool
	{
		var s: CompilerParser.Stack
		var a: Int

		/*
		 *	Step 1: reset and push the empty state.
		 */

		success = true
		stack = []

		hasError = false
		errorCount = 0

		s = CompilerParser.Stack()
		s.state = CompilerParser.K_STARTSTATE
		s.filename = lex.filename
		s.line = lex.line
		s.column = lex.column

		stack.append(s)

		/*
		 *	Now repeat forever:
		 */

		a = lex.lex()
		while true {
			s = stack.last!

			/*
			 *	Determine if this is the end state. If so, then we immediately
			 *	quit. We assume the user has set the production rule at the
			 *	top, so we can simply drop the stack
			 */

			if s.state == CompilerParser.K_ACCEPTSTATE {
				stack.removeAll()
				return success
			}

			/*
			 *	Now determine the action and shift, reduce or handle error as
			 *	appropriate
			 */

			var action = actionForState(s.state, token: a)
			var foundError = false

			if action == Int.max {
				/*
				 *	Handle error. First, note we have an error, and note the
				 *	symbol on which our error took place.
				 */

				success = false
				errorFileName = lex.filename
				errorLine = lex.line
				errorColumn = lex.column
				hasError = true

				/*
				 *	First, scan backwards from the current state, looking for one
				 *	which has an 'error' symbol.
				 */

				var ix = stack.count
				while (ix > 0) && !foundError {
					ix -= 1
					let si = stack[ix]
					action = actionForState(si.state, token: CompilerParser.K_ERRORTOKEN)
					if (action >= 0) && (action != Int.max) {

						/*
						 *	Encountered error state. If the user has defined an
						 *	error token, we ultimately will want to (a) unwind
						 *	the stack until we find a state which handles the
						 *	error transition. We then .
						 */

						if ix+1 < stack.count {
							stack.removeSubrange(ix+1..<stack.count)
						}

						/*
						 *	At this point we perform a shift to our new error
						 *	state.
						 */

						var s = CompilerParser.Stack()
						s.state = UInt16(action)
						s.value = lex.value

						s.filename = lex.filename
						s.line = lex.line
						s.column = lex.column

						stack.append(s)

						/*
						 *	Second, we start pulling symbols until we find a symbol
						 *	that shifts, or until we hit the end of file symbol.
						 *	This becomes our current token for parsing
						 */

						while (true) {
							a = lex.lex()
							action = actionForState(s.state, token: a)
							if (action >= 0) && (action != Int.max) {
								/*
								 *	Valid shift. This becomes our current token,
								 *	and we resume processing.
								 */

								foundError = true
								break
							} else if (a == CompilerParser.K_EOFTOKEN) || (a == -1) {
								/*
								 *	We ran out of tokens. At this point all
								 *	we can do is print an error and force quit
								 */

								error(code: CompilerParser.ERROR_SYNTAX)
								stack.removeAll()
								return false
							}
						}
					}
				}
				if foundError {
					continue
				}

				/*
				 *	If we reach this point, there is no error we can recover to.
				 *	So figure this out on our own.
				 *
				 *	First, we see if the state we're in has a limited number of
				 *	choices. For example, in C, the 'for' keyword will always be
				 *	followed by a '(' token, so we can offer to automatically
				 *	insert that token.
				 */

				let actionMin: Int = Int(CompilerParser.ActionI[Int(s.state)])
				let actionMax: Int = Int(CompilerParser.ActionI[Int(s.state) + 1])
				var actionVal: Int = actionMin
				var actionState: Int16 = -1

				for ix in actionMin..<actionMax {
					let act = CompilerParser.ActionA[ix]
					if actionState == -1 {
						if act >= 0 {
							actionState = act;
							actionVal = ix
						}
					} else {
						actionState = -1
						break
					}
				}

				if actionState != -1 {
					/*
					 *	We can accomplish this transition with one token. Print
					 *	an error, and do a shift on the state with an empty value.
					 */

					let tokenStr = tokenToString(CompilerParser.ActionJ[actionVal])
					error(code: CompilerParser.ERROR_MISSINGTOKEN, data: ["token": tokenStr as AnyObject])


					/*
					 *	Perform a shift but do not pull a new token
					 */

					let top = stack.last!

					var s = CompilerParser.Stack()

					s.state = UInt16(actionState)
					s.value = lex.value

					s.filename = top.filename
					s.line = top.line
					s.column = top.column

					stack.append(s)
					continue
				}

				/*
				 *	See if we have a limited choice in reductions. If this can
				 *	only reduce to a single state, try that reduction.
				 */

				actionState = 0
				for ix in actionMin..<actionMax {
					let act = CompilerParser.ActionA[ix]
					if actionState == 0 {
						if (act < 0) && (actionState != act) {
							actionState = act;
						}
					} else {
						actionState = 0
						break
					}
				}

				if actionState != 0 {
					/*
					 *	We have one possible reduction. Try that. Note that this
					 *	will trigger a syntax error since we're reducing down
					 *	without the follow token. My hope is that the state we
					 *	transition to has a limited set of next tokens to follow.
					 */

					_ = reduce(action: Int16(action))
					continue;
				}

				/*
				 *	If we have a limited number of tokens which can follow,
				 *	print a list of them. Then shift by the first one we
				 *	find. We don't do this if the number of shifts is greater
				 *	than five.
				 */

				if actionMax - actionMin <= 5 {
					var list: [String] = []
					for ix in actionMin..<actionMax {
						list.append(tokenToString(CompilerParser.ActionJ[ix]))
					}

					error(code: CompilerParser.ERROR_MISSINGTOKENS, data: ["tokens": list as AnyObject])

					/*
					 *	Now we artificially insert the first of the list of
					 *	tokens as our action and continue.
					 */

					a = Int(CompilerParser.ActionJ[actionMin])
					continue;
				}

				/*
				 *	If we get here, things just went too far south. So we
				 *	skip a token, print syntax error and move on
				 */

				error(code:CompilerParser.ERROR_SYNTAX)
				a = lex.lex()
				if a == -1 {
					return false
				}

			} else if action >= 0 {
				/*
				 *	Shift operation.
				 */

				// Shift
				var s = CompilerParser.Stack()

				s.state = UInt16(action)
				s.value = lex.value

				s.filename = lex.filename
				s.line = lex.line
				s.column = lex.column

				stack.append(s)

				// Advance to next token.
				a = lex.lex()

				// Decrement our error count. If this is non-zero we're in an
				// error state, and we don't pass spurrous errors upwards
				if errorCount > 0 {
					errorCount -= 1
				}
			} else {
				/*
				 *	Reduce action. (Reduce is < 0, and the production to reduce
				 *	by is given below
				 */

				action = -action-1

				if !reduce(action: Int16(action)) {

					// If there is an error, this handles the error.
					// (This should not happen in practice).
					error(code:CompilerParser.ERROR_SYNTAX)

					// Advance to next token.
					a = lex.lex()
				}
			}
		}
	}

}
