### Syntax components

Three basic rules:

- Every name starting with an uppercase letter is a global production. Meaning it's commom to all sysntax specified to the document
- Every name starting with a lowercase letter is local production. Meaning it's valid only where it is defined
- Double quotes or single quotes makr a literal character sequence.
- To concatenate use the + symbol
- The logical OR symbol is |
- The \* symbol is a "zero or more" indicator. Meaning, in practice that it is "any" value
- The symbol ? indicates or or more repetions of the item to the left
- The ( ) group items in order*if*

Aside from that we can have the following:

- Identifiers - used to name a block, atrtribute or variable.
- Operators - [these](./hcl_operators.md) are the supported operators
- Numeric Literal - Define the structure of a number.
- Expressions - create config files by specifying values within attribute definitions. Normally used to return a type. [Examples](./expressions.hcl)
- LiteralValue - represent the value and the type of a primitive. Can be: Number, truo or false, null.
- CollectionValue - create and define a collection. [Examples](./collectionvalue.hcl)
- TemplateExpr - Define a template that embeds a program. In Terraform it's an external file used to dynamically load some resource. It is created as a string. [Examples](./templateexpr.hcl)
- VariableExp - defines a variable. [Example](./example.hcl)
- Function and FunctionCall - operation that solves single or multiple operations as part of an algorithm returning a result. [Example](./function.hcl)
- Index, GetAttr, Splat. [Examples](index_getattr_splat.hcl) :
  - Index - used to return a value from a tuple, list or map. Returns a single element from a collection of values. If the key is not on the list an error is shown.
  - GetAttr - returns a single value from an object
  - Splat - Used to access an element in a list. Can be one of two:
    - Attribute only
    - Full splat: supports the indexing into elements of a list
