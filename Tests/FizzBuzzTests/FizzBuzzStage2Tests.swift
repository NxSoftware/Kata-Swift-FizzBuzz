import XCTest
@testable import FizzBuzz

class FizzBuzzStage2Tests: XCTestCase {

  func test1_gives1() {
    expect(1, toBe: "1", "1 should be 1")
  }
  
  func test3_givesFizz() {
    expect(3, toBe: "Fizz", "3 should be Fizz because it is divisible by 3")
  }
  
  func test5_givesBuzz() {
    expect(5, toBe: "Buzz", "5 should be Fizz because it is divisible by 5")
  }

  func test13_givesFizz() {
    expect(13, toBe: "Fizz", "13 should be Fizz because it contains 3")
  }
  
  func test15_givesFizz() {
    expect(15, toBe: "Buzz", "15 should be Buzz because it contains 5")
  }
  
  func test23_givesFizz() {
    expect(23, toBe: "Fizz", "23 should be Fizz because it contains 3")
  }
  
  func test30_givesFizz() {
    expect(30, toBe: "Fizz", "30 should be Fizz because it contains 3")
  }
  
  func test33_givesFizz() {
    expect(33, toBe: "Fizz", "33 should be Fizz because it contains 3")
  }
  
  func test52_givesBuzz() {
    expect(52, toBe: "Buzz", "52 should be Buzz because it contains 5")
  }
  
  func test151_givesBuzz() {
    expect(151, toBe: "Buzz", "151 should be Buzz because it contains 5")
  }
  
  // MARK: - Lifecycle
  
  override func setUp() {
    super.setUp()
    let fizz = DivisibleByOrContainsFilter(number: 3, string: "Fizz")
    let buzz = DivisibleByOrContainsFilter(number: 5, string: "Buzz")
    sut = FizzBuzz(filters: [fizz, buzz, DefaultFilter()])
  }
  
  // MARK: - Assertions
  
  private func expect(_ number: Int, toBe expected: String, _ failureMessage: String, file: StaticString = #file, line: UInt = #line) {
    XCTAssertEqual(expected, sut.value(for: number), failureMessage, file: file, line: line)
  }
  
  // MARK: - 
  
  private var sut: FizzBuzz!
  
}
