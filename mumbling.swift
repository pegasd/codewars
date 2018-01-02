/*
  This runs @ Swift 3.1.1 [no Swift 4 @ codewars yet]
*/

func accum(_ s: String) -> String {
  var arr: [String] = []
  for index in s.characters.indices {
    var mumble = "\(s[index])".uppercased()
    mumble += String(repeating: "\(s[index])".lowercased(), count: s.distance(from: s.startIndex, to: index))
    arr.append(mumble)
  }
  return arr.joined(separator: "-")
}

print(accum("abcd"))
print(accum("RqaEzty"))
print(accum("cwAt"))
