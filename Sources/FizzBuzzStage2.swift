enum FizzBuzzStage2 {

  static func value(for int: Int) -> String {
    if int % 10 == 3 { 
      return "Fizz"
    }
    return FizzBuzz.value(for: int)
  }

}
