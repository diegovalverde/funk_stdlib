# roll matrix rows

rroll([], _): [].
rroll(M, off): [ M[i - off] | 0 <= i < (len(M) / len(M[0])) ].
