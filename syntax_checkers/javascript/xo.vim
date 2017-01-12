"============================================================================
"File:        xo.vim
"Description: JavaScript syntax checker using XO
"Maintainer:  Sindre Sorhus <sindresorhus@gmail.com> (sindresorhus.com)
"License:     MIT
"============================================================================

if exists('g:loaded_syntastic_javascript_xo_checker')
	finish
endif
let g:loaded_syntastic_javascript_xo_checker = 1

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_javascript_xo_GetLocList() dict
	let makeprg = self.makeprgBuild({'args_before': '--reporter=compact'})

	let errorformat =
		\ '%E%f: line %l\, col %c\, Error - %m,' .
		\ '%W%f: line %l\, col %c\, Warning - %m'

	return SyntasticMake({
		\ 'makeprg': makeprg,
		\ 'errorformat': errorformat,
		\ 'subtype': 'Style'})
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
	\ 'filetype': 'javascript',
	\ 'name': 'xo'})

let &cpo = s:save_cpo
unlet s:save_cpo
