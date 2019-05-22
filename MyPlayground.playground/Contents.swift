//: Playground - noun: a place where people can play // "//:" markup  comment - can see by selecting Render Documentation

import UIKit
import PlaygroundSupport //need for autorun?
import Foundation //for Tic Tac Toe Game

var str = "Hello, playground"

//from WWDC 2018 Video
"The Play button follows the pointer"
"Blue means ready to execute"
"Run to line..."
do {
    "...to top-level statements only"
}
"shift-enter" //run to current line / cursor
"Blue means..." //able to edit if in blue without restarting playground
"Tap Stop (square) to reset"

//Rock, Paper, Scissors Game
let roshambo = ["rock", "paper", "scissors"]
func check(_ left: String, beats right: String) -> Bool {
    
    return (3 + roshambo.firstIndex(of: left)! - roshambo.firstIndex(of: right)!) % 3 == 1
    
}//end check func
let computerMove = roshambo.shuffled().first!

check("paper", beats: computerMove)

