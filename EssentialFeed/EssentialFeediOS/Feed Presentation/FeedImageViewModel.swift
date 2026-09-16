//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 9/4/26.
//

import Foundation
import EssentialFeed

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool

    var hasLocation: Bool {
        location != nil
    }
}
