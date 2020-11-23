nnoremap <F7> :call Post()<cr>}p
nnoremap <leader>ss :call Send()<cr>

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
    let s = system("python3 /sam/sam_2018/import/swietlik/send_status.py < " . @%)
    echom 'Sent ' . s
endfunction

command! -nargs=1 Silent
\   execute 'silent !' . <q-args>
\ | execute 'redraw!'
