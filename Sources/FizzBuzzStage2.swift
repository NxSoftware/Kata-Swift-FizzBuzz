enum FizzBuzzStage2 {

  static func value(for int: Int) -> String {
    if int == 13 { 
      return "Fizz"
    }
    return FizzBuzz.value(for: int)
  }

}
