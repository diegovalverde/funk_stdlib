# roll matrix columns

shift_row(row, off): [ row[j - off] | 0 <= j < len(row) ].

croll(M, off): [ shift_row(M[i], off) | 0 <= i < (len(M) / len(M[0])) ].
