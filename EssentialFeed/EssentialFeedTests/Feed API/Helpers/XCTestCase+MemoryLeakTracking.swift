//
//  XCTestCase+MemoryLeakTracking.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 8/20/25.
//

import XCTest

extension XCTestCase {
    func trackForMemoryLeaks(
        _ instance: AnyObject,
        file: StaticString = #filePath,
        line: UInt = #line
    ) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(
                instance,
                "Instance should be deallocated. Potential memory leak.",
                file: file,
                line: line
            )
        }
    }
}
