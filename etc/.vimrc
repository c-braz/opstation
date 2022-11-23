set mouse=v
set foldmethod=marker
set foldmarker=----------,++++++++++
set expandtab
set tabstop=2
set t_BE=
set t_co=256

syntax on
"Set folds to auto Open
autocmd BufWinEnter * silent! :%foldopen!
"Set CWD for Vim to Pastables to make :r easier
"autocmd BufEnter * lcd $HOME/$opname/pastables/
"Function Key mappings

map <F1> i
	\Name:<CR>
	\IP:<CR>
	\OS:<CR>
	\Notes:<CR><CR>
	\----------<CR><CR><CR>
	\++++++++++<CR>	

map <F2> i
	\----------<CR><CR><CR>
	\++++++++++	
	
"Insert new fold area, return cursor within area in insert mode 
nmap <F3> o----------<CR>++++++++++<ESC>O
"Wrap and fold lines from Visual mode
xnoremap <F3> <ESC>:'<put!='----------'\|'>put='++++++++++'<CR>kzaO


nmap <F5> i<C-R>=strftime("%T %D ")<CR><Esc>
imap <F5> <C-R>=strftime("%T %D ")<CR>

nnoremap <F9> za
imap <F9> <Esc>za

"Matches all IP address and colors blue
syn match ipaddr /\(\(25\_[0-5]\|2\_[0-4]\_[0-9]\|\_[01]\?\_[0-9]\_[0-9]\?\)\.\)\{3\}\(25\_[0-5]\|2\_[0-4]\_[0-9]\|\_[01]\?\_[0-9]\_[0-9]\?\)/
hi link ipaddr Identifier

"Matches folds and colors title organge
syn match preDashes ".*\n\ze----------"
hi link preDashes Keyword 

"Matches folds and colors title organge
syn match Dashes ".*----------"
hi Dashes ctermfg=green

"Matches folds and colors title organge
syn match Plus ".*++++++++++"
hi Plus ctermfg=green

syn match octo "^#.*"
hi octo ctermfg=DarkBlue
 
