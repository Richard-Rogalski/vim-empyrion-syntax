" Vim syntax file
" Language: Empyrion Config Files (.ecf)
" Maintainer: Richard Rogalski (Aslantis)
" Latest Revision: 17 February 2021

" Keywords
syn keyword ecfBasic VERSION:
syn keyword ecfBool true false
" Things to be highlighted in curly brackets
syn keyword ecfHeader contained Material +Template Template +Entity Entity +Block Block +Item Item Entity +Container Container LootGroup StatusEffect Element Faction GalaxyConfig Animation TabGroup Reputation +Dialogue EGroup Token Trader
syn keyword ecfChild contained Child
syn keyword ecfBody contained Body

" Comments
syn keyword ecfTodo contained TODO FIXME XXX NOTE IMPORTANT ONLY READ
syn match ecfComment "#.*$" "\/\*.*\*\/" contains=ecfTodo

" Matches
syn match ecfNumberInt '\d\+'

" Regions
syn region ecfDescBlock start="{" end="}" fold transparent contains=ecfHeader,ecfBody,ecfChild

let b:current_syntax = "ecf"

" highlighting rules
hi def link ecfBool Boolean
" hi def link ecfCommentMulti Comment
hi def link ecfComment Comment
hi def link ecfBasic Statement
hi def link ecfNumberInt Constant
hi def link ecfTodo Todo
hi def link ecfHeader Special
hi def link ecfChild Keyword
hi def link ecfBody Keyword
