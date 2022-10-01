// Write your code below 🤾‍♂️ 

class Pokemon {
  var num = 0
  var name = ""
  var type = [""]
  var ability = [""]

  init(num: Int, name: String, type: [String], ability: [String]) {
  self.num = num
  self.name = name
  self.type = type
  self.ability = ability
  }

  func displayInfo() {
    print("No.       #\(num)")
    print("Name      \(name)")
    print("Type      \(type)")
    print("Abilities \(ability)")
    print("===================================")
  }
}

var bulbasaur = Pokemon(num: 1, name: "Bulbasaur", type: ["Grass 🌱", "Poison 💀"], ability: ["Overgrow"])

var charmander = Pokemon(num: 4, name: "Charmander", type: ["Fire 🔥"], ability: ["Blaze"])

var squirtle = Pokemon(num: 7, name: "Squirtle", type: ["Water 💧"], ability: ["Torrent"])

var pikachu = Pokemon(num: 25, name: "Pikachu", type: ["Electric ⚡"], ability: ["Electrity"])

bulbasaur.displayInfo()
charmander.displayInfo()
squirtle.displayInfo()
pikachu.displayInfo()

class GigantamaxPokemon : Pokemon {
  var location = ""
  init(num: Int, name: String, type: [String], ability: [String], location: String) {
 
    self.location = location
 
    super.init(num: num, name: name, type: type, ability: ability)
}

  override func displayInfo() {
    print("No.       #\(num)")
    print("Name      \(name)")
    print("Type      \(type)")
    print("Location  \(location)")
    print("Abilities \(ability)")
    print("===================================")
  }

}

var charizard = GigantamaxPokemon(num: 6, name: "Charizard", type: ["Fire 🔥"], ability: ["Blaze"], location: "Lake of Outrage")

charizard.displayInfo()
