"Vim ems to pixels
if !exists('g:px_to_em_base')
  let g:px_to_em_base = 16
endif

function! VimPxEmConvert(convert_to, skipconfirm, start_line, end_line, convert_all)
  if a:skipconfirm
    let modifiers= "g"
  else
    let modifiers= "gc"
  endif

  if a:start_line == 1 && a:end_line == line('$') && a:convert_all == 0
    let start_line = "."
    let end_line = "."
  else
    let start_line = a:start_line
    let end_line = a:end_line
  endif

  if a:convert_to == "px"
    let search_for = '\v(\d*.\d*)em'
    let replace_with = printf("%.0fpx", round(g:px_to_em_base*str2float(submatch(1))))
  elseif a:convert_to == "em"
    let search_for = '\v(\d)px'
    let replace_with = printf("%0.3fem", 1.0/g:px_to_em_base*submatch(1))
  endif

  execute start_line . "," . end_line ."s/". search_for . "/" . replace_with . "/" . modifiers
endfunction

command! -range=% -bang Em call VimPxEmConvert("em",<bang>0,<line1>,<line2>, 0)
command! -range=% -bang Px call VimPxEmConvert("px", <bang>0,<line1>,<line2>, 0)
command! -range=% -bang EmAll call VimPxEmConvert("em",<bang>0,<line1>,<line2>, 1)
command! -range=% -bang PxAll call VimPxEmConvert("px", <bang>0,<line1>,<line2>, 1)
