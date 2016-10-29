//
//  String+TimepieceTests.swift
//  Timepiece
//
//  Created by Naoto Kaneko on 2015/03/01.
//  Copyright (c) 2015年 Naoto Kaneko. All rights reserved.
//

import Timepiece
import XCTest

class StringTests: XCTestCase {
    func testDateInFormat() {
        let date = "2014-08-15T20:25:43+0900".date(inFormat: "yyyy-MM-dd'T'HH:mm:ssZ")
        XCTAssertEqual(date, Date(year: 2014, month: 8, day: 15, hour: 20, minute: 25, second: 43))
    }

    @available(iOS 10.0, *)
    func testDateInISO8601Format() {
        let date = "2014-08-15T20:25:43+0900".dateInISO8601Format()
        XCTAssertEqual(date, Date(year: 2014, month: 8, day: 15, hour: 20, minute: 25, second: 43))
    }
}
