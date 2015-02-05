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
