//
//  CircleButton.swift
//  ProgrammingLanguages
//
//  Created by Hamada Mouhamed on 1/15/18.
//  Copyright © 2018 Hamada Mouhamed. All rights reserved.
//

import UIKit

class MyCircleButton : UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.white.cgColor
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = self.frame.size.height / 2
    }
}
