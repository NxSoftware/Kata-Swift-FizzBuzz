enum FizzBuzz {

  enum Fizz {
    static let number = 3
  }
  enum Buzz {
    static let number = 5
  }

  static func value(for int: Int) -> String {
    var result = ""
    if int % Fizz.number == 0 {
      result += "Fizz"
    }
    if int % Buzz.number == 0 {
      result += "Buzz"
    }
    return result.isEmpty ? String(int) : result
  }
  
  static func values(from start: Int, to end: Int) -> [String] {
    return (start...end).map(value)
  }

}
