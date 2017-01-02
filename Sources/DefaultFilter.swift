class DefaultFilter: FizzBuzzFilter {
  
  func decorate(result: String, withValueFor int: Int) -> String {
    return result.isEmpty ? String(int) : result
  }
  
}
