import XCTest
@testable import CommonMark

final class CommonMarkTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CommonMark().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
