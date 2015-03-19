"Vim ems to pixels
if !exists('g:px_to_em_base')
  let g:px_to_em_base = 16
endif

function! Em() range
  '<,'>s#\v(\d+)px#\=printf("%0.3fem", 1.0/g:px_to_em_base*submatch(1))#gc
endfunction

function! Px() range
  '<,'>s#\v(\d*\.\d*)em#\=printf("%.0fpx", round(g:px_to_em_base*str2float(submatch(1))))#gc
endfunction

command! -range Em call Em()
command! -range Px call Px()
