if exists('g:loaded_atimestamp')
  finish
endif
let g:loaded_atimestamp = 1

" <q-args> は引数を意味する
command! -nargs=? Pushts call atimestamp#timestamp(<f-args>)

