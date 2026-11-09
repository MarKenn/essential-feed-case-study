//
//  FeedEndpointTests.swift
//  EssentialFeedTests
//
//  Created by Mark Kenneth Bayona on 11/9/26.
//

import XCTest
import EssentialFeed

final class FeedEndpointTests: XCTestCase {

    func test_feed_endpointURL() {
        let baseURL = URL(string: "http://base-url.com")!

        let received = FeedEndpoint.get.url(baseURL: baseURL)
        let expected = URL(string: "http://base-url.com/v1/feed")!

        XCTAssertEqual(received, expected)
    }

}
