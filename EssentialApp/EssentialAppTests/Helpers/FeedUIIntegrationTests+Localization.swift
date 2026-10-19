//
//  FeedUIIntegrationTests+Localization.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 9/7/26.
//

import Foundation
import XCTest
import EssentialFeed

extension FeedUIIntegrationTests {
    private struct DummyView: ResourceView {
        func display(_ viewModel: Any) {}
    }

    var loadError: String {
        LoadResourcePresenter<Any, DummyView>.loadError
    }

    var feedTitle: String {
        FeedPresenter.title
    }
}
