//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 9/15/26.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(description: image.description, location: image.location)
    }
}
