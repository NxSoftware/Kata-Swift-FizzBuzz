protocol FizzBuzzFilter {
  var number: Int { get }
  var string: String { get }
  
  func value(for int: Int) -> String
}

extension FizzBuzzFilter {
  func value(for int: Int) -> String {
    if int % number == 0 {
      return string
    }
    return ""
  }
}
