m1 = [0 1 0 0 0;
      1 0 1 1 0;
      0 1 0 1 0;
      0 1 1 0 1;
      0 0 0 1 0];
path = dijkstra_alg(m1, 1, 5);
path

m2 = [0 3 0 0 0;
      3 0 4 100 0;
      0 4 0 5 0;
      0 100 5 0 7;
      0 0 0 7 0];
path = dijkstra_alg(m2, 1, 5);
path

m2 = [0 3 0 0 0;
      3 0 4 6 0;
      0 4 0 5 0;
      0 6 5 0 7;
      0 0 0 7 0];
path = dijkstra_alg(m2, 1, 5);
path

drawCircGraph(m1)
