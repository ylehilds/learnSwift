// Write your code below 📼
// the theme of your mixtape is The beatles Greates hits!

print(".------------------------.")
print("| mixtape fun     90 min |")
print("|     __  ______  __     |")
print("|    (  )|).....|(  )    |")
print("|    (__)|)_____|(__)    |")
print("|    ________________    |")
print("|___/_._o________o_._\\___|")

var mixtape = [String]()

mixtape += ["All You Need Is Love - The Beatles","The Ballad of John and Yoko - The Beatles","Day Tripper - The Beatles","Don't Let Me Down - The Beatles","From Me to You - The Beatles","Get Back - The Beatles","Hello, Goodbye - The Beatles","Hey Jude - The Beatles","I Feel Fine - The Beatles","I Want to Hold Your Hand - The Beatles","Lady Madonna - The Beatles","Penny Lane - The Beatles","Paperback Writer - The Beatles"]

print(mixtape.count)
mixtape.remove(at: 12)
mixtape.insert("Twist and shout - The Beatles", at:0)

for item in mixtape {
  print(item)
}

print("\nSide A:")
for i in 0 ..< mixtape.count/2 {
  print("\(i+1). \(mixtape[i])")
}

print("Side B:\n")
for i in mixtape.count/2 ..< mixtape.count {
  print("\(i+1). \(mixtape[i])")
}

