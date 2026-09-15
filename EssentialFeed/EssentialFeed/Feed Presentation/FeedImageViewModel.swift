//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 9/15/26.
//

public struct FeedImageViewModel<Image> {
    public let description: String?
    public let location: String?
    public let image: Image?
    public let isLoading: Bool
    public let shouldRetry: Bool

    var hasLocation: Bool {
        location != nil
    }
}
