//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 9/15/26.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?

    public var hasLocation: Bool {
        location != nil
    }
}
