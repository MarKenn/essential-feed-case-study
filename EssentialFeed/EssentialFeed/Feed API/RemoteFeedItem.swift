//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 9/27/25.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
