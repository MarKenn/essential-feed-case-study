//
//  UITableView+Dequeueing.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 9/6/26.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
