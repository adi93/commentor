" ----------------------------------------------------------------------------
" File:        kr-commentor.vim
" Description: Plugin for quickly commenting/uncommenting text
" Maintainer:  Aditya Harit <harit.aditya@gmail.com>
" License:     MIT X11
" ----------------------------------------------------------------------------

" Init {{{

if !exists('g:kr_commentor_debug') && (exists('g:kr_commentor_disable') || exists('loaded_kr_commentor') || &cp)
    finish
endif
let loaded_kr_commentor = 1

command! -nargs=0 ToggleComment call kr-commentor#ToggleComment("$$")

" }}}
" Commands {{{
