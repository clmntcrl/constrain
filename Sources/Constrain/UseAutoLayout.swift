//  Created by Cyril Clément
//  Copyright © 2018 clmntcrl. All rights reserved.

import UIKit

public func useAutoLayout<V>(_ view: V) -> Void where V: UIView {
    view.translatesAutoresizingMaskIntoConstraints = false
}
