//
//  ViewController.swift
//  CommentInteragir
//
//  Created by Evan Martho on 26/07/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appuieBtn: UIButton!
    
    @IBOutlet weak var viewMiddle: UIView!
    
    @IBOutlet weak var colorBtn: UIButton!
    
    var backgroundColor: UIColor = .systemBackground
    
    var centerView: CGPoint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBg()
        viewMiddle.isUserInteractionEnabled = true
        let gesture : UIGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(roundView))
        viewMiddle.addGestureRecognizer(gesture)
        centerView = viewMiddle.center
    }
    
    func updateBg(){
    
//        view.backgroundColor = backgroundColor
        UIView.animate(withDuration: 1){
            self.view.backgroundColor = self.backgroundColor
        }
    }

    @objc func roundView(){
        let corner = viewMiddle.layer.cornerRadius
        let newValue : CGFloat = corner == 0 ? 25 : 0
        viewMiddle.layer.cornerRadius = newValue
    }
    @IBAction func appuieAction(_ sender: UIButton) {
        
        print("Appuie sur le bouton")
        backgroundColor = (backgroundColor  == .systemBackground) ? .systemMint : .systemBackground
        updateBg()
        
    }
    
    func isView (_ touches: Set<UITouch>) -> Bool{
        guard let touch = touches.first else {return false}
        guard let view = touch.view else {return false}
        guard view == viewMiddle else {return false}
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard isView(touches) else {return}
        print("C'est parti")
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard isView(touches) else {return}
        let newCenter = touches.first!.location(in: self.view)
        viewMiddle.center = newCenter

    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard isView(touches) else {return}
        viewMiddle.center = centerView
    }
    
    @IBAction func colorBtnPressed(_ sender: UIButton) {
        
        switch sender.tag{
        case 0: viewMiddle.backgroundColor = .systemGreen
        case 1: viewMiddle.backgroundColor = .systemPurple
        case 2: viewMiddle.backgroundColor = .systemIndigo
        default : break
        }
    }
}

