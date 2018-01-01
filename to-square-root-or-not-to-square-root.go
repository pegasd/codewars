package main

import "math"
import "fmt"

func SquareOrSquareRoot(arr []int) []int{
  var result []int
  for _, element := range arr {
    sqrt_el := math.Sqrt(float64(element))

    if sqrt_el == float64(int(sqrt_el)) {
      result = append(result, int(sqrt_el))
    } else {
      result = append(result, element * element)
    }
  }
  return result
}

func main() {
  t := []int{1, 4, 9, 10}
  fmt.Println(SquareOrSquareRoot(t))
}
