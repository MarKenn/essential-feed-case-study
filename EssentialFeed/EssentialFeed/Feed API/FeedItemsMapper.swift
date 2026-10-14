//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 8/15/25.
//

import Foundation

struct FeedItemsMapper {
    private struct Root: Decodable {
        private let items: [Item]

        private struct Item: Decodable {
            let id: UUID
            let description: String?
            let location: String?
            let image: URL
        }

        var images: [FeedImage] {
            items.map {
                FeedImage(id: $0.id, description: $0.description, location: $0.location, url: $0.image)
            }
        }
    }

    static func map(_ data: Data, response: HTTPURLResponse) throws -> [FeedImage] {
        guard response.isOK,
              let root = try? JSONDecoder().decode(Root.self, from: data) else {
            throw RemoteFeedLoader.Error.invalidData
        }

        return root.images
    }
}
