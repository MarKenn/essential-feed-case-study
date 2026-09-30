//
//  UIControl+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Mark Kenneth Bayona on 8/29/26.
//

import UIKit

extension UIControl {

    func simulate(event: Event) {
        allTargets.forEach { target in
            actions(forTarget: target,forControlEvent: event)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }

}
