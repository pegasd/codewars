[
  We run a dual loop 16 * 16 times and each time we print a character.

  Gotta say, the top solution is pretty damn awesome:

    .+[.+]

  Yup, that's it.
]

++++++++
++++++++ 16
[
  >
  ++++++++
  ++++++++ * 16
  [
    >. # move to a virgin (at first) cell and print current char
    +  # add one to current cell (see: not a virgin anymore)
    <- # move back to loop the loop
  ]
  <-
]
