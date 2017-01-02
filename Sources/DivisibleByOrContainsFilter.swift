class DivisibleByOrContainsFilter: DivisibleByFilter {
  
  override func decorate(result: String, withValueFor int: Int) -> String {
    if integer(int, contains: number) {
      return string
    } else if result.isEmpty {
      return super.decorate(result: result, withValueFor: int)
    } else {
      return result
    }
  }
  
  private func integer(_ int: Int, contains number: Int) -> Bool {
    var i = int
    while i > 0 {
      if i % 10 == number {
        return true
      }
      i /= 10
    }
    return false
  }
  
}
