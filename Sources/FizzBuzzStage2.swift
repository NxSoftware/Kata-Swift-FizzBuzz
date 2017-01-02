class FizzBuzzStage2: FizzBuzz {

  override func value(for int: Int) -> String {
    for filter in filters {
      var i = int
      while i > 0 {
        if i % 10 == filter.number {
          return filter.string
        }
        i /= 10
      }
    }
    return super.value(for: int)
  }

}
