//
//  UIRefreshControl+Helpers.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 9/15/26.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
