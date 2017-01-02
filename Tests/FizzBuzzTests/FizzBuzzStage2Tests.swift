import XCTest
@testable import FizzBuzz

class FizzBuzzStage2Tests: XCTestCase {

  func test13_givesFizz() {
    expect(13, toBe: "Fizz", "13 should be Fizz because it contains 3")
  }
  
  // MARK: - Assertions
  
  private func expect(_ number: Int, toBe expected: String, _ failureMessage: String, file: StaticString = #file, line: UInt = #line) {
    XCTAssertEqual(expected, FizzBuzzStage2.value(for: number), failureMessage, file: file, line: line)
  }
  
}
