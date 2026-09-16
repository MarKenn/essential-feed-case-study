//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Mark Kenneth Bayona on 8/29/26.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
