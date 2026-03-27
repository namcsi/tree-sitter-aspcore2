import XCTest
import SwiftTreeSitter
import TreeSitterAspcore2

final class TreeSitterAspcore2Tests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_aspcore2())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading ASP-Core-2 grammar")
    }
}
