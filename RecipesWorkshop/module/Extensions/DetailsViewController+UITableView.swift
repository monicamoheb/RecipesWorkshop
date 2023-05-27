//
//  myFile.swift
//  RecipesWorkshop
//
//  Created by JETS Mobile Lab4 on 26/05/2023.
//

import Foundation
import UIKit

class SelfSizedCell : UITableView {
    
    override var contentSize: CGSize {
        didSet {
            invalidateIntrinsicContentSize()
            setNeedsLayout()
        }
    }
    
    override var intrinsicContentSize: CGSize {
        let height = min(.infinity, contentSize.height)
        return CGSize(width: contentSize.width, height: height)
    }
}
