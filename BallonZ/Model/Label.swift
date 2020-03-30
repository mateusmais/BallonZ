//
//  Label.swift
//  BallonZ
//
//  Created by Mateus Augusto M Ferreira on 30/03/20.
//  Copyright © 2020 Mateus Augusto M Ferreira. All rights reserved.
//

import Foundation
import UIKit



class Label: UILabel{
    
    init(text:String, frame:CGRect, position:CGPoint, color: UIColor) {
        super.init(frame: frame)
        self.text = text
        self.textColor = color
        self.backgroundColor = .blue
        self.textAlignment = .center
        self.center = position
        self.font = UIFont.systemFont(ofSize: 35)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
