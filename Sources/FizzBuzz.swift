class FizzBuzz {

  let filters: [FizzBuzzFilter]
  
  init(filters: [FizzBuzzFilter]) {
    self.filters = filters
  }

  func value(for int: Int) -> String {
    var result = ""
    for filter in filters {
      result = filter.decorate(result: result, withValueFor: int)
    }
    return result
  }
  
  func values(from start: Int, to end: Int) -> [String] {
    return (start...end).map(value)
  }

}
