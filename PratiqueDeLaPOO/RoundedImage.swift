//
//  RoundedImage.swift
//  RoundedImage
//
//  Created by matthieu passerel on 20/08/2021.
//

import UIKit

class RoundedImage: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCorner()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupCorner()
    }
    
    func setupCorner() {
        print(frame)
        let width = frame.width
        let height = frame.height
        let mini = width >= height ? height : width
        let cornerRadius = mini / 2
        layer.cornerRadius = cornerRadius
    }

}
