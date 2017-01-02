enum FizzBuzzStage2 {

  static func value(for int: Int) -> String {
    let filters: [FizzBuzzFilter] = [FizzFilter(), BuzzFilter()]
    
    var i = int
    while i > 0 {
      for filter in filters {
        if i % 10 == filter.number {
          return filter.string
        }
      }
      i /= 10
    }
    return FizzBuzz(filters: filters).value(for: int)
  }

}
