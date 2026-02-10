use sort

# top-level list length (no flatten)
list_len([]): 0.
list_len(_ <~ [A]): 1 + list_len(A).

MAX_EXPLORE_LEN <-> 200

# found no solution
astar(_, _, _, []):[].

# found a solution
astar(isGoal, getNext, sortCriteria, explore | isGoal(explore[0]) = 1):
    explore[0].

astar(isGoal, getNext, sortCriteria,  explore | list_len(explore) >= MAX_EXPLORE_LEN):
    [].

astar(isGoal, getNext, sortCriteria,  n <~ [explore]):
    x <-  getNext(n)
    astar( isGoal, getNext, sortCriteria, sort([explore] ++ [x], sortCriteria) ).
