// Create your Whale Talk program below:
var input: String = "Great job!"
var output: String = ""

for char in input {
  let lowerChar: String = char.lowercased()
  switch lowerChar {
    case "a", "i", "o":
      output.append(lowerChar.uppercased())
    case "e":
      output.append("EE")
    case "u":
      output.append("UU")
    default:
      continue
  }
}
print(output)

