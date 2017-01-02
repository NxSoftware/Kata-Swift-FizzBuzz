enum FizzBuzzStage2 {

  static func value(for int: Int) -> String {
    var i = int
    while i > 0 {
      if i % 10 == FizzFilter().number {
        return FizzFilter().string
      } else if i % 10 == BuzzFilter().number {
        return BuzzFilter().string
      }
      i /= 10
    }
    return FizzBuzz.value(for: int)
  }

}
