//
//  ViewController.swift
//  PetBook
//
//  Created by Evan Martho on 25/07/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet var picturesRocky: [UIImageView]!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupContainerView()
        setupPicturesRocky()
    }
    
    func setupContainerView() {
        containerView.layer.cornerRadius = 20
//        containerView.layer.shadowColor = UIColor.black.cgColor
//        containerView.layer.shadowRadius = 4
//        containerView.layer.shadowOpacity = 0.75
//        containerView.layer.shadowOffset = CGSize(width: 0, height: -4)
    }
    
    func setupPicturesRocky(){
        picturesRocky.forEach{
            picture in let picturesFrame = picture.frame
            let corner = picturesFrame.height / 2
            picture.layer.cornerRadius = corner
            picture.layer.borderColor = UIColor.systemBackground.cgColor
            picture.layer.borderWidth = 2
        }
    }
}

