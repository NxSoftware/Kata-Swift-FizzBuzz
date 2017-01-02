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

enum FizzBuzz {

  class Fizz: FizzBuzzFilter {
    let number = 3
    let string = "Fizz"
  }
  class Buzz: FizzBuzzFilter {
    let number = 5
    let string = "Buzz"
  }

  static func value(for int: Int) -> String {
    var result = ""
    let filters: [FizzBuzzFilter] = [Fizz(), Buzz()]
    for filter in filters {
      result += filter.value(for: int)
    }
    return result.isEmpty ? String(int) : result
  }
  
  static func values(from start: Int, to end: Int) -> [String] {
    return (start...end).map(value)
  }

}
