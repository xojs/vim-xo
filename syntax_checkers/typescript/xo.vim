"============================================================================
"File:        xo.vim
"Description: TypeScript syntax checker using XO
"Maintainer:  Sindre Sorhus <sindresorhus@gmail.com> (sindresorhus.com)
"License:     MIT
"============================================================================

if exists('g:loaded_syntastic_typescript_xo_checker')
	finish
endif
let g:loaded_syntastic_typescript_xo_checker = 1
let g:syntastic_typescript_xo_exec = 'npx'

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_typescript_xo_IsAvailable() dict
		return executable(self.getExec())
endfunction

function! SyntaxCheckers_typescript_xo_GetLocList() dict
	let makeprg = self.makeprgBuild({'args_before': 'xo --reporter=compact'})

	let errorformat =
		\ '%E%f: line %l\, col %c\, Error - %m,' .
		\ '%W%f: line %l\, col %c\, Warning - %m'

	return SyntasticMake({
		\ 'makeprg': makeprg,
		\ 'errorformat': errorformat,
		\ 'subtype': 'Style'})
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
	\ 'filetype': 'typescript',
	\ 'name': 'xo'})

let &cpo = s:save_cpo
unlet s:save_cpo
