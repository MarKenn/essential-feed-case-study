//
//  ImageCommentsEndpoint.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 11/9/26.
//

import Foundation

public enum ImageCommentsEndpoint {
    case get(UUID)

    public func url(baseURL: URL) -> URL {
        switch self {
        case let .get(id):
            baseURL.appending(path: "/v1/image/\(id)/comments")
        }
    }
}
