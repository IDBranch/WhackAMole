//
//  ViewController.swift
//  WhackAMole
//
//  Created by Branch, Isaiah D on 10/15/20.
//  Copyright © 2020 Branch, Isaiah D. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var screenWidth = 0
    var screenHeight = 0
    var score = 0
    var scorelbl = UILabel()
    var backgroundlbl = UILabel()
    var molebtn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let screenBounds: CGRect = UIScreen.main.bounds
        screenWidth = Int(screenBounds.width)
        screenHeight = Int(screenBounds.height)
        
        scorelbl.frame = CGRect(x: 20, y: 20, width: 50, height: (screenHeight-40)/10)
        scorelbl.text = "\(score)"
        view.addSubview(scorelbl)
        
        backgroundlbl.frame = CGRect(x: 20, y: 20+Int(scorelbl.frame.height), width: (screenWidth-40), height: (screenHeight-40-Int(scorelbl.frame.height)))
        backgroundlbl.backgroundColor = UIColor.green
        view.addSubview(backgroundlbl)
        
        molebtn.frame = CGRect(x: Int.random(in: 20...screenWidth-70), y: Int.random(in: 20...screenHeight-70), width: 50, height: 50)
        molebtn.backgroundColor = UIColor.brown
        molebtn.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
        view.addSubview(molebtn)
        
        self.view = view
    }

    @objc func hitMe(_ sender:UIButton!) {
        print("Mole has been tapped")
        molebtn.removeFromSuperview()
        
        scorelbl.removeFromSuperview()
        score+=1
        scorelbl.text = "\(score)"
        view.addSubview(scorelbl)
    }
}

