//
//  UIView+TestHelpers.swift
//  EssentialApp
//
//  Created by Mark Kenneth Bayona on 10/3/26.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.main.run(until: Date())
    }
}
