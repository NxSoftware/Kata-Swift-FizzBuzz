class FizzBuzzStage2: FizzBuzz {

  override func value(for int: Int) -> String {
    var i = int
    while i > 0 {
      for filter in filters {
        if i % 10 == filter.number {
          return filter.string
        }
      }
      i /= 10
    }
    return super.value(for: int)
  }

}
