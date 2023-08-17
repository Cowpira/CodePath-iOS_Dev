//
//  ViewController.swift
//  First_iOS_App
//
//  Created by CowPira on 8/15/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        //function to generate a random color for the background
        func changeColor() -> UIColor{
            let red  = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            
            return UIColor(red: red, green: green, blue: blue, alpha: 0.8)
        }
        
        //connecting the function to the button
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        
        animateLalbels()
        resetLabelsValues()
    }
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelUniversity: UILabel!
    @IBOutlet weak var labeljob: UILabel!
    

    @IBAction func changeLabelColor(_ sender: UILabel) {
        func changeLabelColor() -> UIColor{
            let red  = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            
            return UIColor(red: red, green: green, blue: blue, alpha:0.7)
        }
        
        let randomColor = changeLabelColor()
        labelName.textColor = randomColor
        labelName.font = UIFont(name: "HelveticaNeue", size: 23)
        
        labelUniversity.textColor = randomColor
        labelUniversity.font = UIFont(name:"HelveticaNeue", size: 21)
        
        labeljob.textColor = randomColor
        labeljob.font = UIFont(name: "HelveticaNeue", size: 23)
    }
    
    
    //function to animate the labels
    func animateLalbels(){
        
        UIView.animate(withDuration: 2.4, delay: 0.3, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.1,
                       animations: {
            self.labelName.center = CGPoint(x: 200, y: 40 + 200)
        })
        
        UIView.animate(withDuration: 2.5, delay: 0.4, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.1,
                       animations: {
            self.labelUniversity.center = CGPoint(x: 200, y: 40 + 255)
        })
        
        UIView.animate(withDuration: 2.7, delay: 0.5, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.1,
                       animations: {
            self.labeljob.center = CGPoint(x: 200, y: 40 + 310)
        })
    }
    
    
    //function to reset the labels position
    func resetLabelsValues(){
        self.labelName.center = CGPoint(x: 200, y: 235)
        self.labelUniversity.center = CGPoint(x: 200, y: 290)
        self.labeljob.center = CGPoint(x: 200, y: 345)
    }
}

