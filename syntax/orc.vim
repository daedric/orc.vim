if exists("b:current_syntax")
  finish
endif

syn keyword orcKeywords import site signal stop
syn keyword orcBuiltinSite Iff Ift Signal Stop Eq Not Sub IsNil And Or Div Mul Mod Stop Signal Eq Inequal Less Leq Greater Greq Let Print UMinus Add Concat Sub TypeName Site_index
syn keyword orcBuiltinSite Cons Record Tuple head tail fst snd empty TupleArityChecker
syn keyword orcCondition if then else
syn keyword orcOperators = <: :> /= && \|\| << >>
syn keyword orcBool true false
syn keyword orcSpecial #

syn match orcIdentifier '\<\w\+\>' skipwhite
syn match orcSeq '>.*>' contains=orcIdentifier skipwhite

syn keyword orcBlock def val nextgroup=orcIdentifier

syn region orcString start=+"+ end=+"+ skip=+\\\\\|\\"+ oneline
syn region orcString start=+'+ end=+'+ skip=+\\\\\|\\'+ oneline

" Regular int like number with - + or nothing in front
syn match orcNumber '\d\+' contained display
syn match orcNumber '[-+]\d\+' contained display

" Floating point number with decimal no E or e (+,-)
syn match orcNumber '\d\+\.\d*' contained display
syn match orcNumber '[-+]\d\+\.\d*' contained display

" Floating point like number with E and no decimal point (+,-)
syn match orcNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+' contained display
syn match orcNumber '\d[[:digit:]]*[eE][\-+]\=\d\+' contained display

" Floating point like number with E and decimal point (+,-)
syn match orcNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+' contained display
syn match orcNumber '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+' contained display

syn keyword orcTodo contained TODO FIXME XXX NOTE
syn match orcComment "^\s*--.*$" contains=orcTodo

hi def link orcTodo        Todo
hi def link orcComment     Comment
hi def link orcString      String
hi def link orcNumber      Number
hi def link orcOperators   Operator
hi def link orcKeywords    Keyword
hi def link orcBuiltinSite Keyword
hi def link orcCondition   Conditional
hi def link orcBlock       Function
hi def link orcSeq         Identifier
hi def link orcBool        Boolean
hi def link orcSpecial     Special

let b:current_syntax = "orc"

