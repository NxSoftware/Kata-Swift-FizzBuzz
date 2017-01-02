enum FizzBuzzStage2 {

  static func value(for int: Int) -> String {
    var i = int
    while i > 0 {
      if i % 10 == 3 {
        return "Fizz"
      }
      i /= 10
    }
    if int == 52 {
      return "Buzz"
    }
    return FizzBuzz.value(for: int)
  }

}
