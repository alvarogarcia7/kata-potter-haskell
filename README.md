## Potter Kata

Responds to this user story:

```
As a geek with passion for selling books
given a list of books
i want to generate all possible carts (combinations of books in series).
```

A serie might contain one or more books, order does not matter. a cart is a collection of series, order does not matter

The term 'Combinations without repetition' might be useful

Acceptance criteria:

```
AC1
books = []
carts = [[[]]]

AC2
books = [1]
carts = [[[1]]]

AC3
books = [1,2]
carts = [
          [[1],[2]],
          [[1,2]]
        ]

AC4
books = [1,2,3]
carts = [
          [[1],[2],[3]],
          [[1,2],[3]],
          [[1,3],[2]],
          [[2,3],[1]],
          [[1,2,3]]
        ]
```

[Source](http://www.codingdojo.org/cgi-bin/index.pl?action=browse&id=KataPotter&revision=41)

A version in haskell (`main.hs`)

A version in clojure (see the REPL log in `repl.log`)

### Status

This is work in progress. This is able to generate carts with two buckets, not generalized to more carts
