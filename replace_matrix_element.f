

replace(M, p, q, v | p = q ): v.
replace(M, _, [i,j], _ ): M[i,j].

matrix_rows(M): len(M) / len(M[0]).

replace_matrix_element(M, v, pos):
   [ [ replace(M,pos,[i,j], v) | 0 <= j < len(M[0])] | 0 <= i < matrix_rows(M) ].
