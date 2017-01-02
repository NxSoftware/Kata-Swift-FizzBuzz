class DivisibleByFilter: FizzBuzzFilter {
  let number: Int
  let string: String
  
  init(number: Int, string: String) { 
    self.number = number
    self.string = string
  }
  
  func decorate(result: String, withValueFor int: Int) -> String {
    if int % number == 0 {
      return result + string
    }
    return result
  }
}
