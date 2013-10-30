price(purse, 200).
price(shoes, 75).
price(candy, 2).
price(car, 20000).

expensive(Item) :- price(Item, N), N > 50.

same(A, B) :- A is B.

starts_with_5([Head|Tail]) :- Head is 5.

all_different([]).
all_different([H|T]) :- not(member(H, T)), all_different(T).

all_between(_, _, []).
all_between(A, B, [H|T]) :- between(A, B, H), all_between(A, B, T).

sudoku([A, B, C, D],
       [E, F, G, H],
       [I, J, K, L],
       [M, N, O, P]) :-

  all_between(1, 4, [A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P]),

  all_different([A, B, C, D]),
  all_different([E, F, G, H]),
  all_different([I, J, K, L]),
  all_different([M, N, O, P]),

  all_different([A, E, I, M]),
  all_different([B, F, J, N]),
  all_different([C, G, K, O]),
  all_different([D, H, L, P]),

  all_different([A, B, E, F]),
  all_different([C, D, G, H]),
  all_different([I, J, M, N]),
  all_different([K, L, O, P]).
