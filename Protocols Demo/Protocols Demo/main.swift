protocol CanFly {
    func fly()
}

extension CanFly {
    
    func fly() {
        print("The object takes off into the air.")
    }
}

class Bird {
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird mkes a new bird i n a shell.")
        }
    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky")
    }
    
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("The pinguin paddles through the water.")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
}

// MARK: DEMO

let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()

myEagle.fly()
myPlane.fly()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myPlane)

