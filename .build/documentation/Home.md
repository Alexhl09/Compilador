# Types

  - [SemanticHandler](/SemanticHandler):
    The SemanticHandler is an special classs that manages the semantic actions of the compiler.
  - [VirtualMemorySemantic](/VirtualMemorySemantic)
  - [ArrayNode](/ArrayNode):
    This class represents the nodes of the linked list generated to be used to keep track of the dimension of a multidimensional array
  - [Symbol](/Symbol):
    The symbol is one object that encapsulates the information of something that has been declared with an identifier.
    It could be a variable, constant, array, or a function. It constains all the information needed to execute some operations in the semantic analysis
  - [Node](/Node)
  - [InfoStack](/InfoStack)
  - [ErrorCompiler](/ErrorCompiler)
  - [BooleanType](/BooleanType):
    Boolean type has 2 possible values true or false
  - [Kind](/Kind):
    Kind is an enum with 2 possible values metod or field
  - [Operator](/Operator):
    Enum with all the possible Operators to be sent in quadruples
  - [TypeSymbol](/TypeSymbol):
    Enum with all the possible data types supported by the compiler
  - [OperatorStack](/OperatorStack):
    Operation stack  is a structure that has 2 properties, operands and operators.
  - [Quadruple](/Quadruple):
    Struct that saves 4 elements, arg1, arg2, op and result. Basic quadruple
  - [Queue](/Queue)
  - [Stack](/Stack)
  - [ArrayLinkedList](/ArrayLinkedList):
    The arrays has a linked list with node representing the information of each dimension.
  - [ArrayLinkedList.Index](/ArrayLinkedList_Index)
  - [SymbolTable](/SymbolTable):
    Symbol Table is a linked list of node, each node representing one scope.
    Each node has a dictionary that keeps track of each symbol saved
  - [SymbolTable.Index](/SymbolTable_Index)

# Protocols

  - [QueueProtocol](/QueueProtocol)
  - [SemanticErrorDelegate](/SemanticErrorDelegate)
