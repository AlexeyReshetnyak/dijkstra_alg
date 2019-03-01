% adj_l - weighted adjancensy list
% earch vertex is a cell in the cell array
% earch cell consists of structures node
% node has two fields vertex and weight
% adjw - adjancensy matrix

function adj_l = adjw2l(adjw)
  len = length(adjw);
  adj_l = cell(len, 1);

  for ii = 1:len
    neighbors = {};
    for jj = 1:len
      if adjw(ii, jj) > 0
        node.vertex = jj;
        node.weight = adjw(ii, jj);
        neighbors{end + 1} = node;
      endif
    endfor
    adj_l{ii} = neighbors;
  endfor

endfunction
