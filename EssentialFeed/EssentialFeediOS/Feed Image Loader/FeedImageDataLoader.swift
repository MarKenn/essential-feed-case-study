//
//  FeedImageDataLoader.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 8/29/26.
//

import Foundation

public protocol FeedImageDataLoaderTask {
    func cancel()
}

public protocol FeedImageDataLoader {
    typealias Result = Swift.Result<Data, Error>

    func loadImageData(from url: URL, completion: @escaping (Result) -> Void) -> FeedImageDataLoaderTask
}
