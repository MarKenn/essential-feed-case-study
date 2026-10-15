//
//  FeedImageDataMapper.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 10/15/26.
//

import Foundation

public struct FeedImageDataMapper {
    public enum Error: Swift.Error {
        case invalidData
    }

    public static func map(_ data: Data, from response: HTTPURLResponse) throws -> Data {
        guard response.isOK, !data.isEmpty else {
            throw Error.invalidData
        }

        return data
    }
}
