//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Mark Kenneth Bayona on 7/24/26.
//

import Foundation

func anyNSError() -> NSError {
    NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    URL(string: "https://any-url.com")!
}
