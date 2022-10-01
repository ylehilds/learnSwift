var a, b, c, root1, root2: Double
a = 2.0
b = 5.0
c = 3.0

// The positive root
root1 = (-b + (b*b - 4*a*c).squareRoot()) / (2*a)
// The negative root
root2 = (-b - (b*b - 4*a*c).squareRoot()) / (2*a)

print("Root 1 is \(root1)")
print("Root 2 is \(root2)")