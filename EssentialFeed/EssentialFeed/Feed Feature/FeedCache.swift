//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 9/25/26.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
