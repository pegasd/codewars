package main

import "fmt"

func RemovNb(m uint64) [][2]uint64 {
  var result [][2]uint64
  sequence_sum := m * (m + 1) / 2
  for x := uint64(1); x <= m; x++ {
    y := (sequence_sum - x) / (x + 1)
    if y <= m && x * y == (sequence_sum - x - y) {
      result = append(result, [2]uint64{x, y})
    }
  }
  return result
}

func main() {
  fmt.Println(RemovNb(26))
  fmt.Println(RemovNb(100))
  fmt.Println(RemovNb(101))
  fmt.Println(RemovNb(102))
  fmt.Println(RemovNb(110))
}
