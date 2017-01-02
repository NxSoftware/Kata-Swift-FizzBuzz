enum FizzBuzzStage2 {

  static func value(for int: Int) -> String {
    var i = int
    while i > 0 {
      if i % 10 == 3 {
        return "Fizz"
      } else if i % 10 == 5 {
        return "Buzz"
      }
      i /= 10
    }
    return FizzBuzz.value(for: int)
  }

}
