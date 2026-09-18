//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 9/18/26.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }

    var isOK: Bool {
        statusCode == Self.OK_200
    }
}
