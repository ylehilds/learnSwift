// Write your code below 💪

struct Exercise {
  var name: String
  var muscleGroups: [String]
  var reps: Int
  var sets: Int
  var totalReps: Int

  init(name: String, muscleGroups: [String], reps: Int, sets: Int) {
  self.name = name
  self.muscleGroups = muscleGroups
  self.reps = reps
  self.sets = sets
  self.totalReps = sets * reps
  }
}

var pushUp = Exercise(name: "Push up",muscleGroups: ["Triceps", "Chest", "Shoulders"],reps: 10, sets: 3)

var sitUp = Exercise(name: "Sit up",muscleGroups: ["Rectus Abdominis", "Internal and External Obliques", "Iliopsoas", "Rectus Femoris"],reps: 100, sets: 2)

// print(pushUp)

struct Regimen {
  var dayOfWeek: String
  var exercises: [Exercise]
  init(dayOfWeek: String, exercises: [Exercise]) {
    self.dayOfWeek = dayOfWeek
    self.exercises = exercises
  }
  func printExercisePlan() -> Void {
    print("Today is \(self.dayOfWeek) and the plan is to: ")
    for exercise in self.exercises {
      print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s")

      print("That's a total of \(exercise.totalReps) \(exercise.name)s")
    }
  }
}

var mondayRegimen = Regimen(dayOfWeek: "Monday", exercises: [pushUp])

var tuesdayRegimen = Regimen(dayOfWeek: "Tuesday", exercises: [sitUp])

mondayRegimen.printExercisePlan()
print()
tuesdayRegimen.printExercisePlan()