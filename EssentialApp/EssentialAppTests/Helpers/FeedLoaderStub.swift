//
//  FeedLoaderStub.swift
//  EssentialApp
//
//  Created by Mark Kenneth Bayona on 9/24/26.
//

import EssentialFeed

class FeedLoaderStub: FeedLoader {
    private let result: FeedLoader.Result

    init(result: FeedLoader.Result) {
        self.result = result
    }

    func load(completion: @escaping (FeedLoader.Result) -> Void) {
        completion(result)
    }
}
