# implements a linear search
_get_first_not_of(_, [],_): -1.
_get_first_not_of(a,b <~ [B], pos | a != b): 
    b.
_get_first_not_of(a,b <~ [B], pos):
    _get_first_not_of(a, B, pos+1).

get_first_not_of(a,B): _get_first_not_of(a,B,0).
