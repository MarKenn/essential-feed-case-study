//
//  FeedRefreshViewController.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 9/2/26.
//

import UIKit

protocol FeedRefreshViewControllerDelegate {
    func didRequestFeedRefresh()
}

final public class FeedRefreshViewController: NSObject, FeedLoadingView {
    @IBOutlet public var view: UIRefreshControl?

    var delegate: FeedRefreshViewControllerDelegate?

    @IBAction func refresh() {
        delegate?.didRequestFeedRefresh()
    }

    func display(_ viewModel: FeedLoadingViewModel) {
        if viewModel.isLoading {
            view?.beginRefreshing()
        } else {
            view?.endRefreshing()
        }
    }
}
