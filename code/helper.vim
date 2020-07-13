nnoremap <leader>ps :call Post()<cr>
nnoremap <leader>ss :call Send()<cr>
nnoremap <leader>pp <cr>:w<cr>:!python3 %<cr>
nnoremap <leader>d oprint('<esc>pa: ', <esc>pa)<esc>
nnoremap <leader>t :w<cr>:!pytest<cr>

"wykonuje funkcję sql, cały paragraf, pod kursorem
function! Post()
    execute 'normal! yip'
    let lst = split(@@, "\n")
    let s = join(lst, "\n")
    let r = system('psql b2b -c ' . shellescape(s))
    echom s
    let @@ = "\n" . r . "\n"
endfunction

" zapisuje i wysyła bieżący plik
function! Send()
    execute ':write'
    let s = system("python3 /sam/sam_2018/import/send_status.py < " . @%)
    echom 'Sent ' . @%
endfunction
