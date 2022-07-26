//
//  UserView.swift
//  UserView
//
//  Created by matthieu passerel on 20/08/2021.
//

import UIKit


@IBDesignable
class UserView: UIView {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageV: RoundedImage!
    @IBOutlet weak var ageLbl: UILabel!
    
    var color: UIColor = .systemRed
    
    var user: User! {
        didSet {
            nameLabel.text = user.fullName()
            imageV.image = user.image
            ageLbl.text = user.ageString
        }
    }
    
    @IBInspectable var radius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = radius
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
            self.setNeedsDisplay()
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        //Quand on fait un init dans le code
        self.backgroundColor = .systemGreen
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        //Qand on fait un init depuis le storyboard ou un Xib
        self.backgroundColor = color
    }

}
