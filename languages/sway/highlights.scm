; Identifiers
(type_identifier) @type
(primitive_type) @type.builtin
(field_identifier) @property

; Identifier conventions
; Assume all-caps names are constants
((identifier) @constant
 (#match? @constant "^[A-Z][A-Z\d_]+$"))

; Assume uppercase names are enum constructors
((identifier) @constructor
 (#match? @constructor "^[A-Z]"))

; Function calls
(call_expression
 function: (identifier) @function)

(macro_invocation
 macro: (identifier) @function.macro
 "!" @function.macro)

; Function definitions
(function_item (identifier) @function)

; Method definitions
(function_signature_item (identifier) @function)

; Comments
(line_comment) @comment
(block_comment) @comment

; Sway-specific keywords
"abi" @keyword
"as" @keyword
"asm" @keyword
"break" @keyword
"configurable" @keyword
"const" @keyword
"continue" @keyword
"contract" @keyword
"deref" @keyword
"else" @keyword
"enum" @keyword
"fn" @keyword
"for" @keyword
"if" @keyword
"impl" @keyword
"in" @keyword
"let" @keyword
"library" @keyword
"match" @keyword
"mod" @keyword
"mut" @keyword
"predicate" @keyword
"pub" @keyword
"ref" @keyword
"return" @keyword
"script" @keyword
"Self" @keyword
"self" @keyword
"storage" @keyword
"struct" @keyword
"trait" @keyword
"type" @keyword
"use" @keyword
"where" @keyword
"while" @keyword

; Storage keywords
"read" @keyword
"write" @keyword

; Visibility modifiers
"pub" @keyword

; Literals
(char_literal) @string
(string_literal) @string
(raw_string_literal) @string
(boolean_literal) @constant.builtin
(integer_literal) @number
(float_literal) @number

; Special constants
"true" @constant.builtin
"false" @constant.builtin

; Operators
"+" @operator
"-" @operator
"*" @operator
"/" @operator
"%" @operator
"=" @operator
"==" @operator
"!=" @operator
"<" @operator
"<=" @operator
">" @operator
">=" @operator
"&&" @operator
"||" @operator
"!" @operator
"&" @operator
"|" @operator
"^" @operator
"<<" @operator
">>" @operator
"+=" @operator
"-=" @operator
"*=" @operator
"/=" @operator
"%=" @operator
"&=" @operator
"|=" @operator
"^=" @operator
"<<=" @operator
">>=" @operator
"->" @operator
"=>" @operator
".." @operator
"..=" @operator
"::" @operator

; Punctuation
";" @punctuation.delimiter
"," @punctuation.delimiter
"." @punctuation.delimiter
":" @punctuation.delimiter

; Brackets
"(" @punctuation.bracket
")" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket

; Attributes
(attribute_item) @attribute
(inner_attribute_item) @attribute

; Macro rules
(macro_definition (identifier) @function.macro)

; Generic parameters
(type_parameters (type_identifier) @type)
(lifetime (identifier) @label)

; Labels
(labeled_statement (label) @label)
(break_expression (label) @label)
(continue_expression (label) @label)

; Storage access
(storage_access) @property

; Error propagation
"?" @operator