let s:suite = themis#suite('util')
let s:assert = themis#helper('assert')

function! s:suite.shellutils_ls()
    Mkdir ~/ls_test
    Touch ~/ls_test/a
    Touch ~/ls_test/b
    Touch ~/ls_test/c

    redir => result
      silent! Ls ~/ls_test
    redir END

    let list_result = split(result)
    call s:assert.equals(len(list_result), 4)
    call s:assert.equals(list_result, ["3:", "a", "b", "c"])
endfunction

function! s:suite.shellutils_mkdir()
  ""  let directory = '/tmp/test'
  ""  call Call('shellutils#mkdir', directory)
  ""  Expect isdirectory(directory) to_be_true
  ""end

  ""it '/tmp/spaced path'
  ""  let directory = '/tmp/spaced path'
  ""  call Call('shellutils#mkdir', directory)
  ""  Expect isdirectory(directory) to_be_true
  ""end

  ""it 'already exists'
  ""  let directory = '/tmp/test'
  ""  Expect Call('shellutils#mkdir', directory) to_be_false
  ""end
endfunction
