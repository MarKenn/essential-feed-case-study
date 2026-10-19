//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 9/15/26.
//

public struct ResourceErrorViewModel {
    public let message: String?

    static var noError: ResourceErrorViewModel {
        ResourceErrorViewModel(message: nil)
    }

    static func error(message: String) -> ResourceErrorViewModel {
        ResourceErrorViewModel(message: message)
    }
}
