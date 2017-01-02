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
  
  func test15_givesFizzBuzz() {
    expect(15, toBe: "FizzBuzz", "15 should be FizzBuzz")
  }
  
  func testFirst100isCorrect() {
    let expected = ["1",
                    "2",
                    "Fizz",
                    "4",
                    "Buzz",
                    "Fizz",
                    "7",
                    "8",
                    "Fizz",
                    "Buzz",
                    "11",
                    "Fizz",
                    "13",
                    "14",
                    "FizzBuzz",
                    "16",
                    "17",
                    "Fizz",
                    "19",
                    "Buzz",
                    "Fizz",
                    "22",
                    "23",
                    "Fizz",
                    "Buzz",
                    "26",
                    "Fizz",
                    "28",
                    "29",
                    "FizzBuzz",
                    "31",
                    "32",
                    "Fizz",
                    "34",
                    "Buzz",
                    "Fizz",
                    "37",
                    "38",
                    "Fizz",
                    "Buzz",
                    "41",
                    "Fizz",
                    "43",
                    "44",
                    "FizzBuzz",
                    "46",
                    "47",
                    "Fizz",
                    "49",
                    "Buzz",
                    "Fizz",
                    "52",
                    "53",
                    "Fizz",
                    "Buzz",
                    "56",
                    "Fizz",
                    "58",
                    "59",
                    "FizzBuzz",
                    "61",
                    "62",
                    "Fizz",
                    "64",
                    "Buzz",
                    "Fizz",
                    "67",
                    "68",
                    "Fizz",
                    "Buzz",
                    "71",
                    "Fizz",
                    "73",
                    "74",
                    "FizzBuzz",
                    "76",
                    "77",
                    "Fizz",
                    "79",
                    "Buzz",
                    "Fizz",
                    "82",
                    "83",
                    "Fizz",
                    "Buzz",
                    "86",
                    "Fizz",
                    "88",
                    "89",
                    "FizzBuzz",
                    "91",
                    "92",
                    "Fizz",
                    "94",
                    "Buzz",
                    "Fizz",
                    "97",
                    "98",
                    "Fizz",
                    "Buzz"]
    XCTAssertEqual(expected, sut.values(from: 1, to: 100), "First 100 values should be correct")
  }
  
  // MARK: - Lifecycle
  
  override func setUp() {
    super.setUp()
    let fizz = DivisibleByFilter(number: 3, string: "Fizz")
    let buzz = DivisibleByFilter(number: 5, string: "Buzz")
    sut = FizzBuzz(filters: [fizz, buzz, DefaultFilter()])
  }
  
  // MARK: - Assertions
  
  private func expect(_ number: Int, toBe expected: String, _ failureMessage: String, file: StaticString = #file, line: UInt = #line) {
    XCTAssertEqual(expected, sut.value(for: number), failureMessage, file: file, line: line)
  }
  
  // MARK: - 
  
  private var sut: FizzBuzz!
  
}
