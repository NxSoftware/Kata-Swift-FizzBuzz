enum FizzBuzzStage2 {

  static func value(for int: Int) -> String {
    var i = int
    while i > 0 {
      if i % 10 == FizzBuzz.Fizz().number {
        return FizzBuzz.Fizz().string
      } else if i % 10 == FizzBuzz.Buzz().number {
        return FizzBuzz.Buzz().string
      }
      i /= 10
    }
    return FizzBuzz.value(for: int)
  }

}
