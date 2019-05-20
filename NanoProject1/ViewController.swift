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
    
    @IBOutlet var mainView: UIView!
    
    var randomNum1 = Int.random(in: 1...3)
    var randomNum2 = Int.random(in: 1...3)
    var randomNum3 = Int.random(in: 1...6)
    var isCombined = false
    
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
        UIView.animate(withDuration: 5) {
            self.coverView.transform = CGAffineTransform(translationX: 0, y: -550)
            UIView.animate(withDuration: 3, delay: 5, options: UIView.AnimationOptions.init(), animations: {
                self.mainView.backgroundColor = .black
                self.animateViewRed.transform = CGAffineTransform(translationX: 0, y: -222)
                self.animateViewRed.backgroundColor = .red
                self.animateViewBlue.transform = CGAffineTransform(translationX: -137, y: 74)
                self.animateViewBlue.backgroundColor = .blue
                self.animateViewYellow.transform = CGAffineTransform(translationX: 137, y: 74)
                self.animateViewYellow.backgroundColor = .yellow
                UIView.animate(withDuration: 3, delay: 8, options: UIView.AnimationOptions.init(), animations: {
                    self.randomButton()
                }, completion: nil)
            }, completion: nil)
            
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
        spliting()
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
        UIView.animate(withDuration: 3) {
            self.randomButton()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

