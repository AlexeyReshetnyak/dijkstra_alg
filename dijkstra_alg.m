% Copyright (c) 2019, Alexey Reshetnyak
% All rights reserved.
%
% Redistribution and use in source and binary forms, with or without
% modification, are permitted provided that the following conditions are met:
%
% * Redistributions of source code must retain the above copyright notice, this
%   list of conditions and the following disclaimer.
%
% * Redistributions in binary form must reproduce the above copyright notice,
%   this list of conditions and the following disclaimer in the documentation
%   and/or other materials provided with the distribution.
%
% * Neither the name of the copyright holder nor the names of its
%   contributors may be used to endorse or promote products derived from
%   this software without specific prior written permission.
%
% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
% AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
% IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
% DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
% FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
% DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
% SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
% CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
% OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
% OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

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
