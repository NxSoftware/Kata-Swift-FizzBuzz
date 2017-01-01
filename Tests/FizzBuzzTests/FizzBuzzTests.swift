import XCTest
@testable import FizzBuzz

class FizzBuzzTests: XCTestCase {
  
  func test1_gives1() {
    XCTAssertEqual("1", FizzBuzz.value(for: 1), "1 should be 1")
  }
  
  func test2_gives2() {
    XCTAssertEqual("2", FizzBuzz.value(for: 2), "2 should be 2")
  }
  
}
