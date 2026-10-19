//
//  SharedLocalizationTests.swift
//  EssentialFeedTests
//
//  Created by Mark Kenneth Bayona on 10/19/26.
//

import XCTest
import EssentialFeed

final class SharedLocalizationTests: XCTestCase {
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Shared"
        let bundle = Bundle(for: LoadResourcePresenter<Any, DummyView>.self)

        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }

    private struct DummyView: ResourceView {
        func display(_ viewModel: Any) {}
    }

}
