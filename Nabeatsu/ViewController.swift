//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    /**
     0: あほじゃない
     1: あほ
     2: 賢い
     */
    func isAho() -> Int {
        var result: Int = 0
        // 問題1: 3の倍数かどうか調べる
        if (number % 3 == 0) {
            result = 1
        }
//        // 問題2: 1の位が3かどうか調べる
//        if (number % 10 == 3) {
//            return true
//        }
//        // 問題3: 10の位が3かどうか調べる
//        if (number / 10 % 10 == 3) {
//            return true
//        }
        // 問題4: 3がつくかどうか調べる
        var checkNum: Int = number //3がつくか判断するための変数
        while checkNum != 0 {
            if checkNum % 10 == 3 {
                result = 1
                break
            } else {
                checkNum = checkNum / 10
            }
            
        }
        
        //あほのときでも、5の倍数なら賢くなる
        if (result == 1) {
            if number % 5 == 0 {
                result = 2
            }
        }
        // 問題4をやるときは問題3と問題2の答えを消してから書こう

        
        return result
    }
    @IBAction func plusButton(){
        number = number + 1
        countLabel.text = String(number)
        
        if isAho() == 1 {
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else if isAho() == 2 {
            faceLabel.text = "(-'д-')ｷﾘｯ"
        } else {
            
            faceLabel.text = "(゜o゜)"
        }
    }


}

