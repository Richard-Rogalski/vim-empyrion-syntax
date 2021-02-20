# vim-empyrion-syntax
Vim syntax file for empyrion galactic survival .ecf files

# Installation
Place ecf.vim into your vim syntax directory. To find where the file should be placed, run 
:echo expand('$VIM/vimfiles/syntax/ecf.vim')
inside of vim and it will display the absolute directory of where to place it. On linux based systems, it is typically
/usr/share/vim/vimfiles/syntax
if any folders are not present, create them

# Use
For the syntax to work, you could either run
:set syntax=ecf
every time you edit a .ecf file, or you could add the following to filetype.vim (in the same directory as the syntax folder)
au BufRead,BufNewFile *.ecf setfiletype ecf
if filetype.vim doesn't exist, then create it
