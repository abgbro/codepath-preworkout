//
//  ViewController.swift
//  Abhi's Code Path PreWorkout
//
//  Created by user256510 on 1/9/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var turtleImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    func changeColor() -> UIColor{
        let red = CGFloat.random(in:0...1)
        let green = CGFloat.random(in:0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red:red,green:green,blue:blue,alpha:0.3)
    }
    
    @IBAction func changeFontColor(_ sender: UIButton) {
        let randomColor = changeColor()
        sender.setTitle("did it work?", for: .normal)
        let turtle = UIImage(named:"turtle.jpg")
        if turtle != nil{
            turtleImage.image = turtle
        }
        
    }
    @IBAction func goodSquidward(_ sender: UIButton) {
        let handsomeSquidward = UIImage(named:"goodsquidward.jpg")
        if handsomeSquidward != nil{
            turtleImage.image = handsomeSquidward
        }
    }
    @IBAction func badSquidward(_ sender: UIButton) {
        let badSquidward = UIImage(named:"badsquidward.jpg")
        if badSquidward != nil{
            turtleImage.image = badSquidward
        }
    }
}

