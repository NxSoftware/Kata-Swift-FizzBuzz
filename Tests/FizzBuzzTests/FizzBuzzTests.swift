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
  
  func test5_givesBuzz() {
    expect(5, toBe: "Buzz", "5 should be Buzz")
  }
  
  func test6_givesFizz() {
    expect(6, toBe: "Fizz", "6 should be Fizz")
  }
  
  func test10_givesBuzz() {
    expect(10, toBe: "Buzz", "10 should be Buzz")
  }
  
  // MARK: - Assertions
  
  private func expect(_ number: Int, toBe expected: String, _ failureMessage: String, file: StaticString = #file, line: UInt = #line) {
    XCTAssertEqual(expected, FizzBuzz.value(for: number), failureMessage, file: file, line: line)
  }
  
}
