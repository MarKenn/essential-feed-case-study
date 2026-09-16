//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 9/15/26.
//

public struct FeedErrorViewModel {
    public let message: String?

    static var noError: FeedErrorViewModel {
        FeedErrorViewModel(message: nil)
    }

    static func error(message: String) -> FeedErrorViewModel {
        FeedErrorViewModel(message: message)
    }
}
