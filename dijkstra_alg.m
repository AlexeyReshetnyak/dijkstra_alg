function path = dijkstra_alg(adj, start_node, end_node)
  n=length(adj);
  adj_list = adjw2l(adj);
  visited = false(1, n);
  distance = inf(1, n);
  parent = -1 * ones(1, n);
  v = start_node;
  distance(start_node) = 0;

  while visited(v) == false
    visited(v) = true;
    neighbours = adj_list{v};

    for ii = 1:length(neighbours)
      vn = neighbours{ii}.vertex;
      weight = neighbours{ii}.weight;
      if distance(vn) > distance(v) + weight
        distance(vn) = distance(v) + weight;
        parent(vn) = v;
      endif
    endfor

    v = 1;
    dist = inf;
    for ii = 1:n
      if visited(ii) == false && dist > distance(ii)
        dist = distance(ii);
        v = ii;
      endif
    endfor

  endwhile

  path = find_path(start_node, end_node, parent);
endfunction
