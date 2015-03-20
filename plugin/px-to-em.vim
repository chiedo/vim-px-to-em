"Vim ems to pixels
if !exists('g:px_to_em_base')
  let g:px_to_em_base = 16
endif

function! Em(skipconfirm)
  if a:skipconfirm
    '<,'>s#\v(\d+)px#\=printf("%0.3fem", 1.0/g:px_to_em_base*submatch(1))#g
  else
    '<,'>s#\v(\d+)px#\=printf("%0.3fem", 1.0/g:px_to_em_base*submatch(1))#gc
  end
endfunction

function! Px(skipconfirm)
  if a:skipconfirm
    '<,'>s#\v(\d*\.\d*)em#\=printf("%.0fpx", round(g:px_to_em_base*str2float(submatch(1))))#g
  else
    '<,'>s#\v(\d*\.\d*)em#\=printf("%.0fpx", round(g:px_to_em_base*str2float(submatch(1))))#gc
  end
endfunction

command! -range -bang Em call Em(<bang>0)
command! -range -bang Px call Px(<bang>0)
