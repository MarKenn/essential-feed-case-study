//
//  FeedEndpoint.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 11/9/26.
//

import Foundation

public enum FeedEndpoint {
    case get

    public func url(baseURL: URL) -> URL {
        switch self {
        case .get:
            baseURL.appending(path: "/v1/feed")
        }
    }
}
