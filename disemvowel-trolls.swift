/*
  My Solution
*/

func disemvowel(_ s: String) -> String {
    return s.replacingOccurrences(of: "[AOEUIaoeui]", with: "", options: NSString.CompareOptions.regularExpression)
}

/*
  Cleaner, but same approach
*/
/*
func disemvowel(_ s: String) -> String {
  return s.replacingOccurrences(of: "[aeiou]", with: "", options: [.regularExpression, .caseInsensitive])
}
*/
