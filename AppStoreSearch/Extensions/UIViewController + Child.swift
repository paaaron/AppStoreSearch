//
//  UIViewController + Child.swift
//  Canillitapp
//
//  Created by Marcos Griselli on 08/07/2018.
//  Copyright © 2018 Ezequiel Becerra. All rights reserved.
//

import UIKit

extension UIViewController {
    func add(_ child: UIViewController) {
        addChildViewController(child)
        child.view.centerIn(view: view)
        child.didMove(toParentViewController: self)
    }

    func remove() {
        guard parent != nil else {
            return
        }
        willMove(toParentViewController: nil)
        removeFromParentViewController()
        view.removeFromSuperview()
    }
}
