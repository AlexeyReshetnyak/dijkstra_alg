function path = find_path(start_v, end_v, parents)
  path = [];
  if start_v == end_v || end_v == -1
    path(end + 1) = start_v;
  else
    path = find_path(start_v, parents(end_v), parents);
    path(end + 1) = end_v;
  endif
endfunction
