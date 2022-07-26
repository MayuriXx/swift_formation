//
//  ViewController.swift
//  Poulette
//
//  Created by Evan Martho on 26/07/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var imgView: UIImageView!
    
    var centerView: CGPoint!
    
    var backgroundColor: UIColor = .systemBackground
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.isUserInteractionEnabled = true
        centerView = imgView.center
        
    }
    
    func isView (_ touches: Set<UITouch>) -> Bool{
        guard let touch = touches.first else {return false}
        guard let view = touch.view else {return false}
        guard view == imgView else {return false}
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard isView(touches) else {return}
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard isView(touches) else {return}
        let newCenter = touches.first!.location(in: self.view)
        imgView.center = newCenter
        
        //CONDITION POUR LA GAUCHE ET DROITE
        if(newCenter.x > self.view.frame.size.width/2){
            backgroundColor = .systemRed
            self.view.backgroundColor = backgroundColor
        }
        else if(newCenter.x < self.view.frame.size.width/2){
            backgroundColor = .systemGreen
            self.view.backgroundColor = backgroundColor
        }else{
            self.view.backgroundColor = .white
        }
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard isView(touches) else {return}
        imgView.center = centerView
    }
    
    
    @IBAction func playButtonAction(_ sender: UIButton) {
        if(sender.titleLabel?.text == "Play"){
            sender.setTitle("Stop", for: .normal)
        }else{
            sender.setTitle("Play", for: .normal)
        }
    }
}

