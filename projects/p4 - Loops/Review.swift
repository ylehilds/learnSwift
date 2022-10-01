// Test your 🔁 skills!
for num in 1...100 {
  if num % 2 == 0 {
    print("\(num) is even")
  }
  else {
    print("\(num) is odd")
  }
}

for num in 1...100 {
  if num % 2 != 0 && num % 3 != 0 {
    print("\(num) is prime")
  }
  else {
    print("\(num) is not prime")
  }
}

let myString: String = "Lehi is awesome!!!"
var count: Int = 0
for _ in myString {
  count += 1
}
print("\(count)")

let starCount: Int = 15
var stars: String = ""
var starsProgress: Int
for num in 1...starCount {
  starsProgress = num
  for _ in 1...starsProgress {
    stars.append("*")
  }
  print(stars)
  stars = ""
}