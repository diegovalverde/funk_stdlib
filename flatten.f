flatten_append([], B): B.
flatten_append(a <~ [A], B): a ~> [flatten_append(A, B)].

flatten_item(x <~ [Xs]): flatten(x).
flatten_item(x): [x].

flatten([]): [].
flatten(v <~ [A]): flatten_append(flatten_item(v), flatten(A)).
flatten(v): [v].
