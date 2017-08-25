//
//  DesignableView.swift
//  MamasRight
//
//  Created by Raleigh Green on 8/24/17.
//  Copyright © 2017 Raleigh Green. All rights reserved.
//

import UIKit

@IBDesignable class DesignableView: UIView {

    @IBInspectable var cornerRadius : CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }

}
