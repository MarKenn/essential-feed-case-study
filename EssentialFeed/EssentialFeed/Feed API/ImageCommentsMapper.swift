//
//  ImageCommentsMapper.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 10/13/26.
//

import Foundation

struct ImageCommentsMapper {
    private struct Root: Decodable {
        let items: [RemoteFeedItem]
    }

    static func map(_ data: Data, response: HTTPURLResponse) throws -> [RemoteFeedItem] {
        guard response.isOK,
              let root = try? JSONDecoder().decode(Root.self, from: data) else {
            throw RemoteImageCommentsLoader.Error.invalidData
        }

        return root.items
    }
}
