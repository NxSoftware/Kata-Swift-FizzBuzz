enum FizzBuzz {

  static func value(for int: Int) -> String {
    if int % 3 == 0 {
      return "Fizz"
    } else if int % 5 == 0 {
      return "Buzz"
    }
    return String(int)
  }

}
