
function! ToggleComment(commentPrefix)
	let initialMatch="^\\s*" . a:commentPrefix . ".*$"
	if matchstr(getline(line(".")),initialMatch) == ''
		:let executeString="s:^\\(^\\s*\\):\\1" . a:commentPrefix . " :"
	else
		:let executeString="s:\\(^\\s*\\)" . a:commentPrefix . "\\s*:\\1:"
	endif
	:execute executeString
endfunction
