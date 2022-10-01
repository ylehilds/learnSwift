var englishText = "this is a secret message"

var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-. -.-.--"

// Add your code below 🤫
var letterToMorse = [
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--..",
  ".": ".-.-.-",
  "?": "..--..",
  ",": "--..--",
  "!": "-.-.--"
]

var morseText: String = ""
englishText = englishText.lowercased() //Modify your code to make all the characters in a message lower case before being translated into Morse code.
for element in englishText {
  if let morseChar = letterToMorse["\(element)"]
  {
    morseText += morseChar + " "
  } else {
    morseText += "   "
  }
}
print("morseText: \(morseText)")

var decodedMessage: String = ""
var morseCodeArray = [String]()
var currMorse = ""

for char in secretMessage {
  if char != " " {
    currMorse.append(char)
  } else {
    switch currMorse {
      case "":
        currMorse += " "
      case " ":
        morseCodeArray.append(" ")
        currMorse = ""
      default:
        morseCodeArray.append(currMorse)
        currMorse = ""
    }
  }
}
morseCodeArray.append(currMorse)
print("morseCodeArray: \(morseCodeArray)")

var morseToLetter: [String:String] = [:]
for (letter, morseChar) in letterToMorse {
  morseToLetter[morseChar] = letter
}

let morseCodeArrayWithIndex = morseCodeArray.enumerated() //Modify your code to make the first letter of each sentence capitalized when translating from Morse code to text.

for (index, morseValue) in morseCodeArrayWithIndex {
  if let letterChar = morseToLetter[morseValue] {
    if index == 0 {
      decodedMessage += letterChar.uppercased()
    } else {
      decodedMessage += letterChar
    }
  } else {
    decodedMessage += " "
  }
}

print("decodedMessage: \(decodedMessage)")