command! RunJest :call _run_jest("")
command! RunJestOnBuffer :call RunJestOnBuffer()
command! RunJestFocused :call RunJestFocused()

function! RunJestOnBuffer()
  call _run_jest(expand("%"))
endfunction

function! RunJestFocused()
  let test_name = _jest_test_search('\<test(\|\<it(\|\<test.only(') "note the single quotes

  if test_name == ""
    echoerr "Couldn't find test name to run focused test."
    return
  endif

  call _run_jest(expand("%") . " -t " . test_name)
endfunction

function! _jest_test_search(fragment)
  let line_num = search(a:fragment, "bs")
  if line_num > 0
    ''
    let tokens_split_on_parens  = split(getline(line_num), "(")
    if len(tokens_split_on_parens) > 1
      return split(tokens_split_on_parens[1], ",")[0]
    endif

    return split(getline(line_num + 1), ",")[0]
  else
    return ""
  endif
endfunction

function! _run_jest(test)
  call VimuxRunCommand("jest " . a:test)
endfunction
