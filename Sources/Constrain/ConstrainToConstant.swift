//  Created by Cyril Clément
//  Copyright © 2018 clmntcrl. All rights reserved.

import UIKit

public func constrain(
    _ item: Any,
    _ attribute: NSLayoutConstraint.Attribute,
    toConstant: CGFloat = 0,
    multiplier: CGFloat = 1,
    priority: UILayoutPriority = .required,
    isActive: Bool = true
) -> NSLayoutConstraint {

    let constraint = NSLayoutConstraint(
        item: item,
        attribute: attribute,
        relatedBy: .equal,
        toItem: .none,
        attribute: attribute,
        multiplier: multiplier,
        constant: toConstant
    )
    constraint.priority = priority
    constraint.isActive = isActive
    return constraint
}

// MARK: - Composable constrain to constant

public func constrain(
    _ attribute: NSLayoutConstraint.Attribute,
    _ relation: NSLayoutConstraint.Relation = .equal,
    constant: CGFloat,
    multiplier: CGFloat = 1,
    priority: UILayoutPriority = .required
) -> (Any) -> Void {

    return constrain(
        attribute,
        relation,
        .none,
        attribute,
        constant: constant,
        multiplier: multiplier,
        priority: priority
    )
}

