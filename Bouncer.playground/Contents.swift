//:If Statements Exercise: The Bouncer

// Here's the struct the represents the people who want to come in to the club
struct Clubgoer {
    var name: String
    var age: Int
    var onGuestList: Bool
    init(name: String, age:Int, onGuestList: Bool){
        self.name = name
        self.age = age
        self.onGuestList = onGuestList
    }
}

// Here are the people who want to come in.
var ayush = Clubgoer(name: "Ayush", age: 19, onGuestList: true)
var gabrielle = Clubgoer(name: "Gabrielle", age: 29, onGuestList: true)
var chris = Clubgoer(name: "Chris", age: 32, onGuestList: false)

func admit(person: Clubgoer) {
    print("\(person.name), come and party with us!")
}

func deny(person: Clubgoer) {
    print("Sorry, \(person.name), maybe you can go play Bingo with the Android team.")
}

func screen(screenPerson: Clubgoer) {
    if screenPerson.onGuestList{
        admit(person: screenPerson)
    }
    else
    {
        deny(person: screenPerson)
        }
    }

func screenUnder21(_ person: Clubgoer) {
    if person.age <= 21
    {
        deny(person: person)
    }
    else{
        admit(person: person)
    }
}

screenUnder21(ayush)

screenUnder21(gabrielle)

screenUnder21(chris)



