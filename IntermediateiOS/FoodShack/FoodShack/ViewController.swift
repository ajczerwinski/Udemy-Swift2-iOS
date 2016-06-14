//
//  ViewController.swift
//  FoodShack
//
//  Created by Allen Czerwinski on 6/13/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let burgerBtn = UIButton()
    let pizzaBtn = UIButton()
    let sandwichBtn = UIButton()
    let tacoBtn = UIButton()
    let orderNowBtn = UIButton()
    let selectedItemThumbImg = UIImageView(image: UIImage(named: "burger"))
    let topViewHolder = UIView()
    let mainThumbViewHolder = UIView()
    let buttonViewHolder = UIView()
    let bottomViewHolder = UIView()
    let topThumbBtn = UIButton()
    let topTitleLbl = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.darkGrayColor()
        self.topViewHolder.backgroundColor = UIColor.whiteColor()
        self.mainThumbViewHolder.backgroundColor = UIColor(red: 220.0 / 255.0, green: 0.89, blue: 210.0 / 255.0, alpha: 1.0)
        self.buttonViewHolder.backgroundColor = UIColor(red: 242.0 / 255.0, green: 241.0 / 255.0, blue: 239.0 / 255.0, alpha: 1.0)
        self.bottomViewHolder.backgroundColor = UIColor(red: 39.0 / 255.0, green: 61.0 / 255.0, blue: 72.0 / 255.0, alpha: 1.0)
        
        self.view.addSubview(topViewHolder)
        self.view.addSubview(mainThumbViewHolder)
        self.view.addSubview(buttonViewHolder)
        self.view.addSubview(bottomViewHolder)
        
    }

}

