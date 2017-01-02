enum FizzBuzz {

  static func value(for int: Int) -> String {
    var result = ""
    let filters: [FizzBuzzFilter] = [FizzFilter(), BuzzFilter()]
    for filter in filters {
      result += filter.value(for: int)
    }
    return result.isEmpty ? String(int) : result
  }
  
  static func values(from start: Int, to end: Int) -> [String] {
    return (start...end).map(value)
  }

}
