class DivisibleByOrContainsFilter: DivisibleByFilter {
  
  override func decorate(result: String, withValueFor int: Int) -> String {
    var i = int
    while i > 0 {
      if i % 10 == number {
        return string
      }
      i /= 10
    }
    if result.isEmpty {
      return super.decorate(result: result, withValueFor: int)
    } else {
      return result
    }
  }
  
}
