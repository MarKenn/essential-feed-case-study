//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 9/19/26.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>

    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
