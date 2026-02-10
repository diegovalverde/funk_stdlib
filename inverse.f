append([], v): [v].
append(x <~ [xs], v): x ~> [append(xs, v)].

inverse([]): [].
inverse(v <~ [A]):
    append(inverse(A), v).
