use find, unique, replace_matrix_element

is_valid(B, v, [i,j]):
    # look into the current row and column
    x <- [B[i]] ++ [B[0..-1, j]]
    # look into the current 3x3 square. with this create a unique list of numbers
    # and check if v is there. Multiply by -1 since find() returns -1 when the number is not found
    x2 <- flatten(x)
    r0 <- 3*(i/3)
    c0 <- 3*(j/3)
    square <- flatten([ [ B[r0+ri, c0+cj] | 0 <= cj < 3 ] | 0 <= ri < 3 ])
    vals <- flatten([x2] ++ [square])
    -1* find(v, vals).

get_next_empty_position(B): 
    p <- find(0,flatten(B))
    [p / 9, p % 9].

# if there are no more 0 cells then we found the solution :)
sudoku_backtracking(B):
    p <- find(0,flatten(B))
    sudoku_backtracking2(B, p).

sudoku_backtracking2(B, p | p = -1): [1,B].
# try out this branch of the tree
sudoku_backtracking2(B, p):
    pos <- [p / 9, p % 9]
    try_values(B, pos, 1).

try_values(_, _, v | v > 9): [0,[]].
try_values(B, pos, v):
    ok <- is_valid(B, v, pos)
    try_candidate(B, pos, v, ok).

try_candidate(B, pos, v, ok | ok = 1):
    M <- replace_matrix_element(B, v, pos)
    sudoku_backtracking(M).
try_candidate(B, pos, v, _):
    try_values(B, pos, v+1).
