command! RunJest :call _run_jest("")
command! RunJestOnBuffer :call RunJestOnBuffer()

function! RunJestOnBuffer()
  call _run_jest(expand("%"))
endfunction

function! _run_jest(test)
  call VimuxRunCommand("jest " . a:test)
endfunction
