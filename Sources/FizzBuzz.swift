enum FizzBuzz {

  static func value(for int: Int) -> String {
    var result = ""
    if int % 3 == 0 {
      result += "Fizz"
    }
    if int % 5 == 0 {
      result += "Buzz"
    }
    return result.isEmpty ? String(int) : result
  }
  
  static func values(from start: Int, to end: Int) -> [String] {
    return (start...end).map(value)
  }

}
