protocol Flyable {
  func fly() -> String
}

class Airplane: Flyable {
  
  func fly() -> String {
    return ("Airplane can fly")
  }
}

class Bird: Flyable {
  
  func fly() -> String {
    return ("Bird can fly too")
  }
}
