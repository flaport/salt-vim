function! Detectyaml()
  if !did_filetype()
    if match(getline(1), '^#!py') > -1
      set ft=python
    else
      set ft=yaml
    endif
  endif
endfunction

:au BufNewFile,BufRead *.yaml,Saltfile call Detectyaml()
