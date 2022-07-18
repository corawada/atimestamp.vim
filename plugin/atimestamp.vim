if exists('g:loaded_atimestamp')
  finish
endif
let g:loaded_atimestamp = 1

" <q-args> は引数を意味する
command! -nargs=1 Pushts call atimestamp#timestamp(<q-args>)

