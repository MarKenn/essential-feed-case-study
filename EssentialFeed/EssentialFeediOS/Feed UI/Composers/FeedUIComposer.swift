//
//  FeedUIComposer.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 9/2/26.
//

import EssentialFeed

final public class FeedUIComposer {
    private init() {}

    public static func feedComposedWith(feedLoader: FeedLoader, imageLoader: FeedImageDataLoader) -> FeedViewController {
        let refreshController = FeedRefreshViewController(feedLoader: feedLoader)
        let feedController = FeedViewController(refreshController: refreshController)
        refreshController.onRefresh = { [weak feedController] feed in
            feedController?.tableModel = feed.map { model in
                FeedImageCellController(model: model, imageLoader: imageLoader)
            }
        }
        return feedController
    }
}
