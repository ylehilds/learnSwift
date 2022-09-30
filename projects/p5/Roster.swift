var spanish101: Set = ["Angela", "Declan", "Aldany", "Alex", "Sonny", "Alif", "Skyla"]
var german101: Set = ["Angela", "Alex", "Declan", "Kenny", "Cynara", "Adam"]
var advancedCalculus: Set = ["Cynara", "Gabby", "Angela", "Samantha", "Ana", "Aldany", "Galina", "Jasmine"]
var artHistory: Set = ["Samantha", "Vanessa", "Aldrian", "Cynara", "Kenny", "Declan", "Skyla"]
var englishLiterature: Set = ["Gabby", "Jasmine", "Alex", "Alif", "Aldrian", "Adam", "Angela"]
var computerScience: Set = ["Galina", "Kenny", "Sonny", "Alex", "Skyla"]

// Write your code below 🍎
var allStudents = spanish101.union(german101).union(advancedCalculus).union(artHistory).union(englishLiterature).union(computerScience)

for student in allStudents {
  print(student)
}
print(allStudents.count)

var noLanguage = allStudents.subtracting(german101).subtracting(spanish101)
print(noLanguage)

var spanishOrGerman = spanish101.symmetricDifference(german101)
print(spanishOrGerman)

var languageAwardWinners = spanish101.intersection(german101).intersection(englishLiterature)
print (languageAwardWinners)

var sevenPlus: Int = 0
var classSet: Set = [spanish101, german101, englishLiterature, computerScience, artHistory, advancedCalculus]

for value in classSet {
  if value.count >= 7 {
    sevenPlus += 1
  }
}
print(sevenPlus)

// removing Skyle from any classes

spanish101.remove("Skyla")
artHistory.remove("Skyla")
computerScience.remove("Skyla")
print("spanish101: \(spanish101)")
print("artHistory: \(artHistory)")
print("computerScience: \(computerScience)")

// combining computer science with advancedCalculus
var fieldTrip = computerScience.union(advancedCalculus).subtracting(german101)
print(fieldTrip)
