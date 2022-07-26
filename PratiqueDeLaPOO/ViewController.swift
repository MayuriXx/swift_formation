//
//  ViewController.swift
//  PratiqueDeLaPOO
//
//  Created by matthieu passerel on 20/08/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mainView: UserView!
    @IBOutlet var topImages: [RoundedImage]!
    var users: [User] = Datas.shared.allUsers()

    override func viewDidLoad() {
        super.viewDidLoad()
        setBackgroundColor(.systemCyan)
        mainView.user = users.first
//        topImages.forEach { img in
//            img.image = users[img.tag].image
//        }
        for index in 0..<topImages.count {
            let image = users[index]
            let btn = topImages[index]
            btn.image = image.image
            btn.isUserInteractionEnabled = true
            btn.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(btnPressed(_:))))
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(mainView.imageV.frame)
        mainView.imageV.setupCorner()
    }
    
    @objc func btnPressed(_ gesture: UITapGestureRecognizer) {
        guard let tag = gesture.view?.tag else { return }
        let user = users[tag]
        mainView.user = user
    }

}

extension ViewController {
    
    func setBackgroundColor(_ color: UIColor) {
        self.view.backgroundColor = color
    }
}

