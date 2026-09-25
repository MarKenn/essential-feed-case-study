//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 9/25/26.
//

import Foundation

public protocol FeedImageDataCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ data: Data, for url: URL, completion: @escaping (Result) -> Void)
}
