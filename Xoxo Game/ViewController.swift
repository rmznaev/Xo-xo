//
//  ViewController.swift
//  TicTacToe Game
//
//  Created by Ramazan Abdullayev on 1/17/19.
//  Copyright © 2019 Ramazan Abdullayev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var buttonOne: UIButton!
    
    @IBOutlet weak var buttonTwo: UIButton!
    
    @IBOutlet weak var buttonThree: UIButton!
    
    @IBOutlet weak var buttonFour: UIButton!
    
    @IBOutlet weak var buttonFive: UIButton!
    
    @IBOutlet weak var buttonSix: UIButton!
    
    @IBOutlet weak var buttonSeven: UIButton!
    
    @IBOutlet weak var buttonEight: UIButton!
    
    @IBOutlet weak var buttonNine: UIButton!
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    // for identify the player
    var buttonSwitch: Bool = false
    
    // for check if win
    var winCheck: Bool = false
    
    var drawCheck: Bool = true
    
    // checks cells count draw or not
    var cellCount = 0

    // for checking win line and draw
    var cellsOfBoard = [ "z", "e", "e", "e", "e", "e", "e", "e", "e", "e"]
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if sender.tag == 1 {
            
            checkButton(buttonSituation: buttonOne)
            
            buttonOne.isUserInteractionEnabled = false
            
            let imageNameForButtonOne = checkImage(button: buttonOne)
            
            cellsOfBoard[1] = imageNameForButtonOne
            
            checkIfWinOrDraw()
            
        } else if sender.tag == 2 {
            
            checkButton(buttonSituation: buttonTwo)
            
            buttonTwo.isUserInteractionEnabled = false
            
            let imageNameForButtonTwo = checkImage(button: buttonTwo)
            
            cellsOfBoard[2] = imageNameForButtonTwo
            
            checkIfWinOrDraw()
            
        } else if sender.tag == 3 {
            
            checkButton(buttonSituation: buttonThree)
            
            buttonThree.isUserInteractionEnabled = false
            
            let imageNameForButtonThree = checkImage(button: buttonThree)
            
            cellsOfBoard[3] = imageNameForButtonThree
            
            checkIfWinOrDraw()
            
        } else if sender.tag == 4 {
            
            checkButton(buttonSituation: buttonFour)
            
            buttonFour.isUserInteractionEnabled = false
            
            let imageNameForButtonFour = checkImage(button: buttonFour)
            
            cellsOfBoard[4] = imageNameForButtonFour
            
            checkIfWinOrDraw()
            
        } else if sender.tag == 5 {
            
            checkButton(buttonSituation: buttonFive)
            
            buttonFive.isUserInteractionEnabled = false
            
            let imageNameForButtonFive = checkImage(button: buttonFive)
            
            cellsOfBoard[5] = imageNameForButtonFive
            
            checkIfWinOrDraw()
            
        } else if sender.tag == 6 {
            
            checkButton(buttonSituation: buttonSix)
            
            buttonSix.isUserInteractionEnabled = false
            
            let imageNameForButtonSix = checkImage(button: buttonSix)
            
            cellsOfBoard[6] = imageNameForButtonSix
            
            checkIfWinOrDraw()
            
        } else if sender.tag == 7 {
            
            checkButton(buttonSituation: buttonSeven)
            
            buttonSeven.isUserInteractionEnabled = false
            
            let imageNameForButtonSeven = checkImage(button: buttonSeven)
            
            cellsOfBoard[7] = imageNameForButtonSeven
            
            checkIfWinOrDraw()
            
        } else if sender.tag == 8 {
            
            checkButton(buttonSituation: buttonEight)
            
            buttonEight.isUserInteractionEnabled = false
            
            let imageNameForButtonEight = checkImage(button: buttonEight)
            
            cellsOfBoard[8] = imageNameForButtonEight
            
            checkIfWinOrDraw()
            
        } else if sender.tag == 9 {
            
            checkButton(buttonSituation: buttonNine)
            
            buttonNine.isUserInteractionEnabled = false
            
            let imageNameForButtonNine = checkImage(button: buttonNine)
            
            cellsOfBoard[9] = imageNameForButtonNine
            
            checkIfWinOrDraw()
            
        }
        
        checkDraw()
        
    }
    
    @IBAction func restartGame(_ sender: Any) {
        
        buttonSwitch = false
        
        cellCount = 0
        
        winnerLabel.text = ""
        
        cellsOfBoard = [ "z", "e", "e", "e", "e", "e", "e", "e", "e", "e"]

        buttonOne.setImage(nil, for: .normal)
        
        buttonOne.isUserInteractionEnabled = true
        //buttonOne.isSelected = true
        
        buttonTwo.setImage(nil, for: .normal)
        
        buttonTwo.isUserInteractionEnabled = true
        //buttonTwo.isSelected = true
        
        buttonThree.setImage(nil, for: .normal)
        
        buttonThree.isUserInteractionEnabled = true
        //buttonThree.isSelected = true
        
        buttonFour.setImage(nil, for: .normal)
        
        buttonFour.isUserInteractionEnabled = true
        //buttonFour.isSelected = true
        
        buttonFive.setImage(nil, for: .normal)
        
        buttonFive.isUserInteractionEnabled = true
        //buttonFive.isSelected = true
        
        buttonSix.setImage(nil, for: .normal)
        
        buttonSix.isUserInteractionEnabled = true
        //buttonSix.isSelected = true
        
        buttonSeven.setImage(nil, for: .normal)
        
        buttonSeven.isUserInteractionEnabled = true
        //buttonSeven.isSelected = true
        
        buttonEight.setImage(nil, for: .normal)
        
        buttonEight.isUserInteractionEnabled = true
        //buttonEight.isSelected = true
        
        buttonNine.setImage(nil, for: .normal)
        
        buttonNine.isUserInteractionEnabled = true
        //buttonNine.isSelected = true
        
        buttonOne.isEnabled = true
        
        buttonTwo.isEnabled = true
        
        buttonThree.isEnabled = true
        
        buttonFour.isEnabled = true
        
        buttonFive.isEnabled = true
        
        buttonSix.isEnabled = true
        
        buttonSeven.isEnabled = true
        
        buttonEight.isEnabled = true
        
        buttonNine.isEnabled = true
        
        buttonOne.backgroundColor = UIColor.white
        
        buttonTwo.backgroundColor = UIColor.white
        
        buttonThree.backgroundColor = UIColor.white
        
        buttonFour.backgroundColor = UIColor.white
        
        buttonFive.backgroundColor = UIColor.white
        
        buttonSix.backgroundColor = UIColor.white
        
        buttonSeven.backgroundColor = UIColor.white
        
        buttonEight.backgroundColor = UIColor.white
        
        buttonNine.backgroundColor = UIColor.white
    }

    func checkButton(buttonSituation: UIButton) {
        
        if buttonSwitch == true  {
            
            buttonSituation.isSelected = false
            
            buttonSwitch = false
            
            buttonSituation.setImage(UIImage(named: "nought.png"), for: .normal)
            
        } else {
            
            buttonSituation.isSelected = true
            
            buttonSwitch = true
            
            buttonSituation.setImage(UIImage(named: "cross.png"), for: .normal)
            
        }
    
    }
    
    func checkIfWinOrDraw() {
        
        if cellsOfBoard[1] == "x" && cellsOfBoard[2] == "x" && cellsOfBoard[3] == "x" ||
            cellsOfBoard[1] == "o" && cellsOfBoard[2] == "o" && cellsOfBoard[3] == "o" {
            
            winCheck = true
            
            drawCheck = false
            
//            print("You Win in 1 - 2 - 3 Way!")
            
            checkWinner(num: 1)
            
            buttonOne.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
            buttonTwo.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
            buttonThree.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
        } else if cellsOfBoard[1] == "x" && cellsOfBoard[4] == "x" && cellsOfBoard[7] == "x" ||
            cellsOfBoard[1] == "o" && cellsOfBoard[4] == "o" && cellsOfBoard[7] == "o" {
            
            winCheck = true
            
            drawCheck = false
            
//            print("You Win in 1 - 4 - 7 Way!")
            
            checkWinner(num: 1)
            
            buttonOne.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
            buttonFour.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
            buttonSeven.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
        } else if cellsOfBoard[1] == "x" && cellsOfBoard[5] == "x" && cellsOfBoard[9] == "x" ||
            cellsOfBoard[1] == "o" && cellsOfBoard[5] == "o" && cellsOfBoard[9] == "o" {
            
            winCheck = true
            
            drawCheck = false
            
//            print("You Win in 1 - 5 - 9 Way!")
            
            checkWinner(num: 1)
            
            buttonOne.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
            buttonFive.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
            buttonNine.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
        } else if cellsOfBoard[3] == "x" && cellsOfBoard[5] == "x" && cellsOfBoard[7] == "x" ||
            cellsOfBoard[3] == "o" && cellsOfBoard[5] == "o" && cellsOfBoard[7] == "o" {
            
            winCheck = true
            
            drawCheck = false
            
//            print("You Win in 3 - 5 - 7 wWay!")
            
            checkWinner(num: 3)
            
            buttonThree.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
            buttonFive.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
            buttonSeven.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
        } else if cellsOfBoard[3] == "x" && cellsOfBoard[6] == "x" && cellsOfBoard[9] == "x" ||
            cellsOfBoard[3] == "o" && cellsOfBoard[6] == "o" && cellsOfBoard[9] == "o" {
            
            winCheck = true
            
            drawCheck = false
            
//            print("You Win in 3 - 6 - 9 Way!")
            
            checkWinner(num: 3)
            
            buttonThree.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
            buttonSix.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
            buttonNine.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
        } else if cellsOfBoard[7] == "x" && cellsOfBoard[8] == "x" && cellsOfBoard[9] == "x" ||
            cellsOfBoard[7] == "o" && cellsOfBoard[8] == "o" && cellsOfBoard[9] == "o" {
            
            winCheck = true
            
            drawCheck = false
            
//            print("You Win in 7 - 8 - 9 Way!")
            
            checkWinner(num: 7)
            
            buttonSeven.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
            buttonEight.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
            buttonNine.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
        } else if cellsOfBoard[2] == "x" && cellsOfBoard[5] == "x" && cellsOfBoard[8] == "x" ||
            cellsOfBoard[2] == "o" && cellsOfBoard[5] == "o" && cellsOfBoard[8] == "o" {
            
            winCheck = true
            
            drawCheck = false
            
//            print("You Win in 2 - 5 - 8 Way!")
            
            checkWinner(num: 2)
            
            buttonTwo.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
            buttonFive.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
            buttonEight.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
        } else if cellsOfBoard[4] == "x" && cellsOfBoard[5] == "x" && cellsOfBoard[6] == "x" ||
            cellsOfBoard[4] == "o" && cellsOfBoard[5] == "o" && cellsOfBoard[6] == "o" {
            
            winCheck = true
            
            drawCheck = false
            
//            print("You Win in 4 - 5 - 6 Way!")
            
            checkWinner(num: 4)
            
            buttonFour.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
            buttonFive.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
            
            buttonSix.backgroundColor = UIColor(red: 0, green: 230, blue: 0, alpha: 0.3)
        }
        
    }
    
    func checkWinner(num: Int) {
        
        if cellsOfBoard[num] == "x" {
            
            winnerLabel.text = "X Player Won The Game!"
            
//            print("X Player Won The Game!")
            
            winCheck = false
            
            drawCheck = false
            
        } else {
            
            winnerLabel.text = "O Player Won The Game!"
            
//            print("O Player Won The Game!")
            
            winCheck = false
            
            drawCheck = false
            
        }
        
        makeAllButtonsFalse()
        
    }
    
    func checkDraw() {
        
        cellCount = 0
        
        if winCheck == false {
    
            for cell in cellsOfBoard {
                
                if cell != "e" {
                    
                    cellCount += 1
                    
//                    print("I'm Checking")
                    
                }
                
                if cellCount == 10 && drawCheck == true {
                    
                    winnerLabel.text = "Draw!"
                    
                    print("Draw!")
                    
                    makeAllButtonsFalse()
                    
                }
                
            }
        }
    
    }
    
    func makeAllButtonsFalse() {
        
        buttonOne.isEnabled = false
        
        buttonTwo.isEnabled = false
        
        buttonThree.isEnabled = false
        
        buttonFour.isEnabled = false
        
        buttonFive.isEnabled = false
        
        buttonSix.isEnabled = false
        
        buttonSeven.isEnabled = false
        
        buttonEight.isEnabled = false
        
        buttonNine.isEnabled = false
        
    }
    
    func checkImage(button: UIButton) -> String {
        
        if (button.currentImage?.isEqual(UIImage(named: "cross.png")))! {
            
            return "x"
            
        }
        
        return "o"
        
    }
    
}
