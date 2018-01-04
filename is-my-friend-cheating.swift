func removNb_one(_ n: Int) -> [(Int,Int)] {
    /*

      First one that works. But I can do better.

      This is the solution I came up with without any algebra.

      I approximate the y value and iterate only on range
      y - 1, y, y + 1

      I also skip a loop if y is outside of 1...n bounds

      Check out Python solution for the first few iterations that didn't pass tests.

    */
    var myResult: [(Int, Int)] = []
    var arraySum = Array(1...n).reduce(0, +)
    for x in 1..<n {
        let approxY = (arraySum - x) / x
        if approxY + 1 > n {
          continue
        }
        for y in (approxY - 1)...(approxY + 1) {
            if (x * y == (arraySum - (x + y))) {
                myResult.append((x, y))
            }
        }
    }
    return myResult
}

func removNb(_ n: Int) -> [(Int,Int)] {
  /*

    This is better.

  */

  var pairArray = [(Int, Int)]()
  let sequenceSum = n * (n + 1) / 2
  for x in 1...n {
    let y = (sequenceSum - x) / (x + 1)
    if y <= n && x * y == sequenceSum - (x + y) {
      pairArray.append((x, y))
    }
  }
  return pairArray
}

print(removNb(26))
print(removNb(100))
print(removNb(37))
print(removNb(101))
