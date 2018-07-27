//
//  CardCellView.swift
//  ProgrammingLanguages
//
//  Created by Hamada Mouhamed on 1/15/18.
//  Copyright © 2018 Hamada Mouhamed. All rights reserved.
//

import UIKit

class MyCardView : UIView
{
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 1
        self.layer.shadowOpacity = 0.8
        self.layer.shadowOffset=CGSize(width: 4, height: 4)
        self.layer.borderColor = UIColor.black.withAlphaComponent(0.8).cgColor
        self.layer.borderWidth = 1
    }
}
