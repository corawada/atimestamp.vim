function! atimestamp#timestamp(...) abort
  # setting comment
  if a:0 >= 1
    let msg = a:1
  else
    let msg = ''
  endif

  :w

  " set comment_str from filetype
  let filetypestr = &ft
  if filetypestr == 'vim'
    let comstart = '" '
    let comend = ''
  elseif filetypestr == 'python'
    let comstart = '# '
    let comend = ''
  else
    echo printf('this filetype "%s" is not difined in the func.', &ft)
    return 1
  endif

  let now_time = localtime()

  let nowline = line('$')
  while nowline >= 0
    let linestr = getline(nowline)
    " timestamp exists
    if l:linestr[2:10] == 'timestamp'
      let start_time = strptime("%y/%m/%d %T", getline(nowline+2)[2:18])
      let diffint = now_time - start_time
      let diffsec = l:diffint % 60
      let diffmin = ((l:diffint - l:diffsec)%3600) / 60
      let diffhour = (l:diffint - l:diffsec - diffmin*60) / 3600
      let diffstr =  printf("%02d:%02d:%02d", l:diffhour, l:diffmin, l:diffsec)
      :break
    endif

    let nowline -= 1
  endwhile
  " not exists timestamp
  if l:nowline == -1
    let message = strftime("%y/%m/%d %T", l:now_time).' 00:00:00 '.l:msg
    call append(line('$'), l:comstart.'timestamp'.l:comend)
    call append(line('$'), l:comstart.'Data     Time     Diff     msg'.l:comend)
    call append(line('$'), l:comstart.message.l:comend)
    :w
    return 1
  endif

  let message = strftime("%y/%m/%d %T", l:now_time).' '.l:diffstr.' '.l:msg 
  call append(line('$'), l:comstart.l:message.l:comend)
  :w
  return 1
endfunction
