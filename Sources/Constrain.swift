//  Created by Cyril Clément
//  Copyright © 2018 clmntcrl. All rights reserved.

import UIKit

public func constrain(
    _ item: Any,
    _ attribute: NSLayoutConstraint.Attribute,
    _ relation: NSLayoutConstraint.Relation,
    _ to: Any?,
    _ toAttribute: NSLayoutConstraint.Attribute,
    constant: CGFloat = 0,
    multiplier: CGFloat = 1,
    priority: UILayoutPriority = .required,
    isActive: Bool = true
) -> NSLayoutConstraint {

    let constraint = NSLayoutConstraint(
        item: item,
        attribute: attribute,
        relatedBy: relation,
        toItem: to,
        attribute: toAttribute,
        multiplier: multiplier,
        constant: constant
    )
    constraint.priority = priority
    constraint.isActive = isActive
    return constraint
}

// MARK: - Composable constrain

public func constrain(
    _ attribute: NSLayoutConstraint.Attribute,
    _ relation: NSLayoutConstraint.Relation,
    _ to: Any?,
    _ toAttribute: NSLayoutConstraint.Attribute,
    constant: CGFloat = 0,
    multiplier: CGFloat = 1,
    priority: UILayoutPriority = .required
) -> (Any) -> Void {

    return { item in
        _ = constrain(
            item,
            attribute,
            relation,
            to,
            toAttribute,
            constant: constant,
            multiplier: multiplier,
            priority: priority
        )
    }
}
