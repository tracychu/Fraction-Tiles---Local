//
//  TileWidthViewController.swift
//  Fraction Tiles - Local
//
//  Created by Tracy Chu on 11/1/15.
//  Copyright © 2015 Tracy Chu. All rights reserved.
//

import UIKit

var problemNum:Int = 5
var problemDenom:Int = 6
var problemWidth: Int = 0

var piece1Num:Int = 1
var piece1Denom:Int = 2
var piece2Num:Int = 1
var piece2Denom:Int = 3
var piece3Num:Int = 1
var piece3Denom:Int = 6

var answerWidth: Int = 0


class TileWidthViewController: UIViewController {

    @IBOutlet weak var currentAnswerWidth: UILabel!
    @IBOutlet weak var correctMessage: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        print ("Create \(problemNum) / \(problemDenom).")

        problemWidth = computeTileWidth(problemNum, denominator: problemDenom)
        
        print ("Correct length of solution is: \(problemWidth)")
        
        currentAnswerWidth.text = String(answerWidth)

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    func computeTileWidth(numerator: Int, denominator: Int) -> Int {
        return (360/denominator) * numerator
    }
    
    @IBAction func addPiece1(sender: AnyObject) {
        answerWidth = answerWidth + computeTileWidth(piece1Num, denominator: piece1Denom)
        currentAnswerWidth.text = String(answerWidth)
        print ("Width is now \(answerWidth)")
        if answerWidth == problemWidth {
            print("YAY!! Correct")
            correctMessage.text = "YAY!! Correct!"
        }
    }
    
    @IBAction func addPiece2(sender: AnyObject) {
        answerWidth = answerWidth + computeTileWidth(piece2Num, denominator: piece2Denom)
        currentAnswerWidth.text = String(answerWidth)
        print ("Width is now \(answerWidth)")
        if answerWidth == problemWidth {
            print("YAY!! Correct")
            correctMessage.text = "YAY!! Correct!"
        }
    }

    @IBAction func addPiece3(sender: AnyObject) {
        answerWidth = answerWidth + computeTileWidth(piece3Num, denominator: piece3Denom)
        currentAnswerWidth.text = String(answerWidth)
        print ("Width is now \(answerWidth)")
        if answerWidth == problemWidth {
            print("YAY!! Correct")
            correctMessage.text = "YAY!! Correct!"
        }
    }
        
}
