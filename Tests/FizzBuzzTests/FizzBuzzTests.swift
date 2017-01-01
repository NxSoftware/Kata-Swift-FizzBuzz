import XCTest
@testable import FizzBuzz

class FizzBuzzTests: XCTestCase {
  
  func test1_gives1() {
    expect(1, toBe: "1", "1 should be 1")
  }
  
  func test2_gives2() {
    expect(2, toBe: "2", "2 should be 2")
  }
  
  func test3_givesFizz() {
    expect(3, toBe: "Fizz", "3 should be Fizz")
  }
  
  // MARK: - Assertions
  
  private func expect(_ number: Int, toBe expected: String, _ failureMessage: String, file: StaticString = #file, line: UInt = #line) {
    XCTAssertEqual(expected, FizzBuzz.value(for: number), failureMessage, file: file, line: line)
  }
  
}
