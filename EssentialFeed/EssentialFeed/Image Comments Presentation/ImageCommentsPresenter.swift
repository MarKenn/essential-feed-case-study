//
//  ImageCommentsPresenter.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 10/20/26.
//

import Foundation

public final class ImageCommentsPresenter {
    public static var title: String {
        NSLocalizedString("IMAGE_COMMENTS_VIEW_TITLE",
                          tableName: "ImageComments",
                          bundle: Bundle(for: Self.self),
                          comment: "Title for the image comments view")
    }
}
