//
//  ViewController.swift
//  NanoProject1
//
//  Created by Reynard Vincent Nata on 20/05/19.
//  Copyright © 2019 Reynard Vincent Nata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coverView: UIView!
    @IBOutlet weak var animateViewRed: UIView!
    @IBOutlet weak var animateViewYellow: UIView!
    @IBOutlet weak var animateViewBlue: UIView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var combineButton: UIButton!
    @IBOutlet weak var splitButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet var mainView: UIView!
    
    var randomNum1 = Int.random(in: 1...3)
    var randomNum2 = Int.random(in: 1...3)
    var randomNum3 = Int.random(in: 1...6)
    var isCombined = false
    var begin = true
    
    func randomButton(){
        if (randomNum3 == 1){
            self.combineButton.transform = CGAffineTransform(translationX: -135, y: 232)
            self.splitButton.transform = CGAffineTransform(translationX: 0, y: 232)
            self.resetButton.transform = CGAffineTransform(translationX: 139, y: 232)
        } else if (randomNum3 == 2){
            self.combineButton.transform = CGAffineTransform(translationX: -135, y: 232)
            self.resetButton.transform = CGAffineTransform(translationX: 0, y: 232)
            self.splitButton.transform = CGAffineTransform(translationX: 139, y: 232)
        } else if (randomNum3 == 3){
            self.splitButton.transform = CGAffineTransform(translationX: -135, y: 232)
            self.combineButton.transform = CGAffineTransform(translationX: 0, y: 232)
            self.resetButton.transform = CGAffineTransform(translationX: 139, y: 232)
        } else if (randomNum3 == 4){
            self.splitButton.transform = CGAffineTransform(translationX: -135, y: 232)
            self.resetButton.transform = CGAffineTransform(translationX: 0, y: 232)
            self.combineButton.transform = CGAffineTransform(translationX: 139, y: 232)
        } else if (randomNum3 == 5){
            self.resetButton.transform = CGAffineTransform(translationX: -135, y: 232)
            self.combineButton.transform = CGAffineTransform(translationX: 0, y: 232)
            self.splitButton.transform = CGAffineTransform(translationX: 139, y: 232)
        } else if (randomNum3 == 6){
            self.resetButton.transform = CGAffineTransform(translationX: -135, y: 232)
            self.splitButton.transform = CGAffineTransform(translationX: 0, y: 232)
            self.combineButton.transform = CGAffineTransform(translationX: 139, y: 232)
        }
    }
    
    @IBAction func startSegment1(_ sender: Any) {
        if begin {
            UIView.animate(withDuration: 5) {
                self.coverView.transform = CGAffineTransform(translationX: 0, y: -550)
                UIView.animate(withDuration: 3, delay: 5, options: .init(), animations: {
                    self.mainView.backgroundColor = .black
                    self.titleLabel.textColor = .black
                    self.animateViewRed.transform = CGAffineTransform(translationX: 0, y: -222)
                    self.animateViewRed.backgroundColor = .red
                    self.animateViewBlue.transform = CGAffineTransform(translationX: -137, y: 74)
                    self.animateViewBlue.backgroundColor = .blue
                    self.animateViewYellow.transform = CGAffineTransform(translationX: 137, y: 74)
                    self.animateViewYellow.backgroundColor = .yellow
                    UIView.animate(withDuration: 2, delay: 8, options: .init(), animations: {
                        self.combineButton.transform = CGAffineTransform(translationX: 0, y: 232)
                        self.splitButton.transform = CGAffineTransform(translationX: 0, y: 232)
                        self.resetButton.transform = CGAffineTransform(translationX: 0, y: 232)
                        UIView.animate(withDuration: 2, delay: 10, options: .init(), animations: {
                            self.randomButton()
                            self.startButton.backgroundColor = .black
                        }, completion: nil)
                    }, completion: nil)
                }, completion: nil)
            }
            begin = false
        }
    }
    
    @IBAction func combineColour(_ sender: Any) {
        isCombined = true
        if (randomNum1 == 1 && randomNum1 == randomNum2) {
            UIView.animate(withDuration: 3) {
                // Colour Red
                self.animateViewRed.transform = CGAffineTransform(translationX: 0, y: -45)
            }
        } else if (randomNum1 == 2 && randomNum1 == randomNum2) {            UIView.animate(withDuration: 3) {
                // Colour Blue
                self.animateViewBlue.transform = CGAffineTransform(translationX: 0, y: -45)
            }
        } else if (randomNum1 == 3 && randomNum1 == randomNum2) {
            UIView.animate(withDuration: 3) {
                // Colour Yellow
                self.animateViewYellow.transform = CGAffineTransform(translationX: 0, y: -45)
            }
        } else if ((randomNum1 == 1 && randomNum2 == 2) || (randomNum1 == 2 && randomNum2 == 1)) {
            UIView.animate(withDuration: 3) {
                // Colour Red and Blue = Purple
                self.animateViewRed.transform = CGAffineTransform(translationX: 0, y: -45)
                self.animateViewRed.backgroundColor = .purple
                self.animateViewBlue.transform = CGAffineTransform(translationX: 0, y: -45)
                self.animateViewBlue.backgroundColor = .purple
            }
        } else if ((randomNum1 == 1 && randomNum2 == 3) || (randomNum1 == 3 && randomNum2 == 1)) {
            UIView.animate(withDuration: 3) {
                // Colour Red and Yellow = Orange
                self.animateViewRed.transform = CGAffineTransform(translationX: 0, y: -45)
                self.animateViewRed.backgroundColor = .orange
                self.animateViewYellow.transform = CGAffineTransform(translationX: 0, y: -45)
                self.animateViewYellow.backgroundColor = .orange
            }
        } else if ((randomNum1 == 2 && randomNum2 == 3) || (randomNum1 == 3 && randomNum2 == 2)) {
            UIView.animate(withDuration: 3) {
                // Colour Blue and Yellow = Green
                self.animateViewBlue.transform = CGAffineTransform(translationX: 0, y: -45)
                self.animateViewBlue.backgroundColor = .green
                self.animateViewYellow.transform = CGAffineTransform(translationX: 0, y: -45)
                self.animateViewYellow.backgroundColor = .green
            }
        }
    }
    
    func easterEgg(){
        UIView.animate(withDuration: 3) {
            self.animateViewRed.transform = CGAffineTransform(translationX: 0, y: -45)
            self.animateViewBlue.transform = CGAffineTransform(translationX: 0, y: -45)
            self.animateViewYellow.transform = CGAffineTransform(translationX: 0, y: -45)
        }
        UIView.animate(withDuration: 3, delay: 4, options: .init(), animations: {
            self.animateViewRed.transform = CGAffineTransform(translationX: 0, y: -500)
            self.animateViewBlue.transform = CGAffineTransform(translationX: 0, y: -500)
            self.animateViewYellow.transform = CGAffineTransform(translationX: 0, y: -500)
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 8, options: .init(), animations: {
            self.combineButton.transform = CGAffineTransform(translationX: 0, y: 232)
            self.splitButton.transform = CGAffineTransform(translationX: 0, y: 232)
            self.resetButton.transform = CGAffineTransform(translationX: 0, y: 232)
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 12, options: .init(), animations: {
            self.combineButton.transform = CGAffineTransform(translationX: 0, y: -500)
            self.splitButton.transform = CGAffineTransform(translationX: 0, y: -500)
            self.resetButton.transform = CGAffineTransform(translationX: 0, y: -500)
            self.titleLabel.isHidden = false
        }, completion: nil)
        
        UIView.animate(withDuration: 5, delay: 16, options: .init(), animations: {
            self.mainView.backgroundColor = .white
            self.titleLabel.textColor = .white
        }, completion: nil)
        
        UIView.animate(withDuration: 3, delay: 22, options: .init(), animations: {
            self.titleLabel.textColor = .black
        }, completion: nil)
    }
    
    func spliting(){
        if (randomNum1 == 1 && randomNum1 == randomNum2) {
            UIView.animate(withDuration: 3) {
                // Colour Red
                self.animateViewRed.transform = CGAffineTransform(translationX: 0, y: -222)
            }
        } else if (randomNum1 == 2 && randomNum1 == randomNum2) {            UIView.animate(withDuration: 3) {
            // Colour Blue
            self.animateViewBlue.transform = CGAffineTransform(translationX: -137, y: 74)
            }
        } else if (randomNum1 == 3 && randomNum1 == randomNum2) {
            UIView.animate(withDuration: 3) {
                // Colour Yellow
                self.animateViewYellow.transform = CGAffineTransform(translationX: 137, y: 74)
            }
        } else if ((randomNum1 == 1 && randomNum2 == 2) || (randomNum1 == 2 && randomNum2 == 1)) {
            UIView.animate(withDuration: 3) {
                // Colour Red and Blue = Purple
                self.animateViewRed.transform = CGAffineTransform(translationX: 0, y: -222)
                self.animateViewRed.backgroundColor = .red
                self.animateViewBlue.transform = CGAffineTransform(translationX: -137, y: 74)
                self.animateViewBlue.backgroundColor = .blue
            }
        } else if ((randomNum1 == 1 && randomNum2 == 3) || (randomNum1 == 3 && randomNum2 == 1)) {
            UIView.animate(withDuration: 3) {
                // Colour Red and Yellow = Orange
                self.animateViewRed.transform = CGAffineTransform(translationX: 0, y: -222)
                self.animateViewRed.backgroundColor = .red
                self.animateViewYellow.transform = CGAffineTransform(translationX: 137, y: 74)
                self.animateViewYellow.backgroundColor = .yellow
            }
        } else if ((randomNum1 == 2 && randomNum2 == 3) || (randomNum1 == 3 && randomNum2 == 2)) {
            UIView.animate(withDuration: 3) {
                // Colour Blue and Yellow = Green
                self.animateViewBlue.transform = CGAffineTransform(translationX: -137, y: 74)
                self.animateViewBlue.backgroundColor = .blue
                self.animateViewYellow.transform = CGAffineTransform(translationX: 137, y: 74)
                self.animateViewYellow.backgroundColor = .yellow
            }
        }
    }
    
    @IBAction func splitColour(_ sender: Any) {
        // easter egg if the result colour is orange and split button pressed
        if ((randomNum1 == 1 && randomNum2 == 3) || (randomNum1 == 3 && randomNum2 == 1)){
            easterEgg()
        } else {
            spliting()
        }
        isCombined = false
    }
    
    @IBAction func resetColour(_ sender: Any) {
        if isCombined {
            spliting()
            isCombined = false
        }
        randomNum1 = Int.random(in: 1...3)
        randomNum2 = Int.random(in: 1...3)
        randomNum3 = Int.random(in: 1...6)
        self.randomButton()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleLabel.isHidden = true
    }


}

