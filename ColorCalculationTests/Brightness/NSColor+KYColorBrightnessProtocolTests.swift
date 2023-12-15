//
//  NSColor+ColorBrightnessProtocolTests.swift
//  ColorCalculationTests
//
//  Created by Kjuly on 12/12/2023.
//  Copyright © 2023 Kaijie Yu. All rights reserved.
//

import XCTest
@testable import ColorCalculation

#if canImport(AppKit)
import AppKit

final class NSColor_ColorBrightnessProtocolTests: XCTestCase {

  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  // MARK: - Tests for ColorBrightnessProtocol

  //
  // static ColorBrightnessProtocol.isBrightColorInHex(_:)
  //
  func testisIsBrightColorInHex() {
    XCTAssertEqual(NSColor.isBrightColorInHex(0x000000), false)
    XCTAssertEqual(NSColor.isBrightColorInHex(0xFFFFFF), true)

    XCTAssertEqual(NSColor.isBrightColorInHex(0xE51C23), false)
    XCTAssertEqual(NSColor.isBrightColorInHex(0xE91E63), false)
    XCTAssertEqual(NSColor.isBrightColorInHex(0x9C27B0), false)
    XCTAssertEqual(NSColor.isBrightColorInHex(0x673AB7), false)
    XCTAssertEqual(NSColor.isBrightColorInHex(0x3F51B5), false)
    XCTAssertEqual(NSColor.isBrightColorInHex(0x5677FC), false)

    XCTAssertEqual(NSColor.isBrightColorInHex(0x03A9F4), true)
    XCTAssertEqual(NSColor.isBrightColorInHex(0x00BCD4), true)

    XCTAssertEqual(NSColor.isBrightColorInHex(0x009688), false)
    XCTAssertEqual(NSColor.isBrightColorInHex(0x259B24), false)

    XCTAssertEqual(NSColor.isBrightColorInHex(0x8BC34A), true)
    XCTAssertEqual(NSColor.isBrightColorInHex(0xCDDC39), true)
    XCTAssertEqual(NSColor.isBrightColorInHex(0xFFEB3B), true)
    XCTAssertEqual(NSColor.isBrightColorInHex(0xFFC107), true)
    XCTAssertEqual(NSColor.isBrightColorInHex(0xFF9800), true)

    XCTAssertEqual(NSColor.isBrightColorInHex(0xFF5722), true)

    XCTAssertEqual(NSColor.isBrightColorInHex(0x795548), false)

    XCTAssertEqual(NSColor.isBrightColorInHex(0x9E9E9E), true)

    XCTAssertEqual(NSColor.isBrightColorInHex(0x607D8B), false)
    XCTAssertEqual(NSColor.isBrightColorInHex(0x000000), false)

    XCTAssertEqual(NSColor.isBrightColorInHex(0xFFFFFF), true)
  }

  //
  // ColorBrightnessProtocol.getter:isBrightColor
  //
  func testisIsBrightColor() {
    XCTAssertEqual(NSColor.makeWithHex(0x000000).isBrightColor, false)
    XCTAssertEqual(NSColor.makeWithHex(0xFFFFFF).isBrightColor, true)

    XCTAssertEqual(NSColor.makeWithHex(0xE51C23).isBrightColor, false)
    XCTAssertEqual(NSColor.makeWithHex(0xE91E63).isBrightColor, false)
    XCTAssertEqual(NSColor.makeWithHex(0x9C27B0).isBrightColor, false)
    XCTAssertEqual(NSColor.makeWithHex(0x673AB7).isBrightColor, false)
    XCTAssertEqual(NSColor.makeWithHex(0x3F51B5).isBrightColor, false)
    XCTAssertEqual(NSColor.makeWithHex(0x5677FC).isBrightColor, false)

    XCTAssertEqual(NSColor.makeWithHex(0x03A9F4).isBrightColor, true)
    XCTAssertEqual(NSColor.makeWithHex(0x00BCD4).isBrightColor, true)

    XCTAssertEqual(NSColor.makeWithHex(0x009688).isBrightColor, false)
    XCTAssertEqual(NSColor.makeWithHex(0x259B24).isBrightColor, false)

    XCTAssertEqual(NSColor.makeWithHex(0x8BC34A).isBrightColor, true)
    XCTAssertEqual(NSColor.makeWithHex(0xCDDC39).isBrightColor, true)
    XCTAssertEqual(NSColor.makeWithHex(0xFFEB3B).isBrightColor, true)
    XCTAssertEqual(NSColor.makeWithHex(0xFFC107).isBrightColor, true)
    XCTAssertEqual(NSColor.makeWithHex(0xFF9800).isBrightColor, true)

    XCTAssertEqual(NSColor.makeWithHex(0xFF5722).isBrightColor, true)

    XCTAssertEqual(NSColor.makeWithHex(0x795548).isBrightColor, false)

    XCTAssertEqual(NSColor.makeWithHex(0x9E9E9E).isBrightColor, true)

    XCTAssertEqual(NSColor.makeWithHex(0x607D8B).isBrightColor, false)
    XCTAssertEqual(NSColor.makeWithHex(0x000000).isBrightColor, false)

    XCTAssertEqual(NSColor.makeWithHex(0xFFFFFF).isBrightColor, true)
  }
}
#endif
