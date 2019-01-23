//  Created by Cyril Clément
//  Copyright © 2018 clmntcrl. All rights reserved.

import UIKit

public typealias LayoutEdgeConstraints = (
    top: NSLayoutConstraint,
    left: NSLayoutConstraint,
    bottom: NSLayoutConstraint,
    right: NSLayoutConstraint
)

public func constrainEdges(
    of item: Any,
    to: Any,
    _ insets: UIEdgeInsets = .zero,
    priority: UILayoutPriority = .required,
    isActive: Bool = true
) -> LayoutEdgeConstraints {

    return (
        top: constrain(item, .top, .equal, to, .top, constant: insets.top),
        left: constrain(item, .left, .equal, to, .left, constant: insets.left),
        bottom: constrain(item, .bottom, .equal, to, .bottom, constant: insets.bottom),
        right: constrain(item, .right, .equal, to, .right, constant: insets.right)
    )
}

// MARK: - Composable constrain edges

public func constrainEdges(
    to: Any,
    _ insets: UIEdgeInsets = .zero,
    priority: UILayoutPriority = .required
) -> (Any) -> Void {

    return { item in
        _ = constrainEdges(of: item, to: to, insets, priority: priority)
    }
}
