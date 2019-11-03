nnoremap <expr><silent> <space>c quickrun#is_runnting() ? quickrun#sweep_sessions() "\<C-c>"
" <Leader>q で quickrun で開かれた出力バッファを閉じる
nnoremap <Leader>q :<C-u>bw! \[QuickRun\ Output\]<CR>

let g:quickrun_config = {
            \ '_' : {
            \   'outputter/buffer/split' : ':botright 8sp',
            \   'outputter/buffer/close_on_empty' : 1,
            \   'outputter/buffer/name' : '[QuickRun Output]',
            \ },
            \ 'c/gcc' : {
            \   'cmdopt' : '-stc=c99 -Wall'
            \ },
            \ 'lisp' : {
            \   'type': executable('sbcl') ? 'lisp/sbcl':
            \           executable('ccl')  ? 'lisp/ccl':
            \           executable('clisp') ? 'lisp/clisp': '',
            \ },
            \ 'lisp/sbcl': {
            \   'command': 'sbcl',
            \   'cmdopt': '--script'
            \ },
            \ 'lisp/ccl' : {
            \   'command': 'ccl',
            \   'exec': '%c -l %s -e "(ccl:quit)"',
            \ },
            \ 'lisp/clisp': {
            \   'command': 'clisp',
            \ }
            \ }
