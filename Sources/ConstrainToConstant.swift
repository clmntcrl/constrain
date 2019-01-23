//  Created by Cyril Clément
//  Copyright © 2018 clmntcrl. All rights reserved.

import UIKit

public func constrain(
    _ item: Any,
    _ attribute: NSLayoutConstraint.Attribute,
    _ relation: NSLayoutConstraint.Relation = .equal,
    toConstant: CGFloat,
    multiplier: CGFloat = 1,
    priority: UILayoutPriority = .required,
    isActive: Bool = true
) -> NSLayoutConstraint {

    return constrain(
        item,
        attribute,
        relation,
        .none,
        attribute,
        constant: toConstant,
        multiplier: multiplier,
        priority: priority,
        isActive: isActive
    )
}

// MARK: - Composable constrain to constant

public func constrain(
    _ attribute: NSLayoutConstraint.Attribute,
    _ relation: NSLayoutConstraint.Relation = .equal,
    toConstant: CGFloat,
    multiplier: CGFloat = 1,
    priority: UILayoutPriority = .required
) -> (Any) -> Void {

    return constrain(
        attribute,
        relation,
        .none,
        attribute,
        constant: toConstant,
        multiplier: multiplier,
        priority: priority
    )
}

