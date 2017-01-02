enum FizzBuzz {

  enum Fizz {
    static let number = 3
    static let string = "Fizz"
  }
  enum Buzz {
    static let number = 5
    static let string = "Buzz"
  }

  static func value(for int: Int) -> String {
    var result = ""
    if int % Fizz.number == 0 {
      result += Fizz.string
    }
    if int % Buzz.number == 0 {
      result += Buzz.string
    }
    return result.isEmpty ? String(int) : result
  }
  
  static func values(from start: Int, to end: Int) -> [String] {
    return (start...end).map(value)
  }

}
