//
//  ViewController.swift
//  ElementBasicApp
//
//  Created by Evan Martho on 25/07/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var roundedView: UIView!
    @IBOutlet weak var omImageView: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.systemMint
        topLabel.textColor = UIColor.white
        roundedView.layer.cornerRadius = roundedView.frame.height / 2
        
        //SHADOW
        headerView.layer.shadowColor = UIColor.secondarySystemBackground.cgColor
        headerView.layer.shadowOffset = CGSize(width: 2, height: 2)
        headerView.layer.shadowOpacity = 0.75
        headerView.layer.shadowRadius = 2
        headerView.layer.cornerRadius = 8
        
        //IMAGE
        omImageView.layer.cornerRadius = 45
        backgroundImage.layer.opacity = 0.8
    }


}

