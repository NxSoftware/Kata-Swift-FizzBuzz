import XCTest
@testable import FizzBuzz

class FizzBuzzTests: XCTestCase {
  
  func test1_gives1() {
    XCTAssertEqual("1", FizzBuzz.value(for: 1), "1 should be 1")
  }
  
}
