//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 8/15/25.
//

import Foundation

struct FeedItemsMapper {
    private struct Root: Decodable {
        let items: [RemoteFeedItem]
    }

    static func map(_ data: Data, response: HTTPURLResponse) throws -> [RemoteFeedItem] {
        guard response.isOK,
              let root = try? JSONDecoder().decode(Root.self, from: data) else {
            throw RemoteFeedLoader.Error.invalidData
        }

        return root.items
    }
}
