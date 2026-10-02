//
//  UIViewController+Snapshot.swift
//  EssentialFeed
//
//  Created by Mark Kenneth Bayona on 10/2/26.
//

import UIKit

extension UIViewController {
    func snapshot(for configuration: SnapshotConfiguration) -> UIImage {
        SnapshotWindow(configuration: configuration, root: self).snapshot()
    }
}

struct SnapshotConfiguration {
    let size: CGSize
    let safeAreaInsets: UIEdgeInsets
    let layoutMargins: UIEdgeInsets
    let traitCollection: UITraitCollection

    static func iPhone15(style: UIUserInterfaceStyle) -> SnapshotConfiguration {
        SnapshotConfiguration(
            size: CGSize(width: 393, height: 852),
            safeAreaInsets: UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0),
            layoutMargins: UIEdgeInsets(top: 20, left: 16, bottom: 0, right: 16),
            traitCollection: UITraitCollection(mutations: { mutableTraits in
                mutableTraits.forceTouchCapability = .available
                mutableTraits.layoutDirection = .leftToRight
                mutableTraits.preferredContentSizeCategory = .medium
                mutableTraits.userInterfaceIdiom = .phone
                mutableTraits.horizontalSizeClass = .compact
                mutableTraits.verticalSizeClass = .regular
                mutableTraits.displayScale = 2
                mutableTraits.displayGamut = .P3
                mutableTraits.userInterfaceStyle = style
            }))
    }
}

private final class SnapshotWindow: UIWindow {
    private var configuration: SnapshotConfiguration = .iPhone15(style: .light)

    convenience init(configuration: SnapshotConfiguration, root: UIViewController) {
        self.init(frame: CGRect(origin: .zero, size: configuration.size))
        self.configuration = configuration
        self.layoutMargins = configuration.layoutMargins
        self.rootViewController = root
        self.isHidden = false
        root.view.layoutMargins = configuration.layoutMargins
    }

    override var safeAreaInsets: UIEdgeInsets {
        configuration.layoutMargins
    }

    override var traitCollection: UITraitCollection {
        super.traitCollection.modifyingTraits { mutableTraits in
            mutableTraits.forceTouchCapability = configuration.traitCollection.forceTouchCapability
            mutableTraits.layoutDirection = configuration.traitCollection.layoutDirection
            mutableTraits.preferredContentSizeCategory = configuration.traitCollection.preferredContentSizeCategory
            mutableTraits.userInterfaceIdiom = configuration.traitCollection.userInterfaceIdiom
            mutableTraits.horizontalSizeClass = configuration.traitCollection.horizontalSizeClass
            mutableTraits.verticalSizeClass = configuration.traitCollection.verticalSizeClass
            mutableTraits.displayScale = configuration.traitCollection.displayScale
            mutableTraits.displayGamut = configuration.traitCollection.displayGamut
            mutableTraits.userInterfaceStyle = configuration.traitCollection.userInterfaceStyle
        }
    }

    func snapshot() -> UIImage {
        let renderer = UIGraphicsImageRenderer(bounds: bounds, format: .init(for: traitCollection))
        return renderer.image { action in
            layer.render(in: action.cgContext)
        }
    }
}
