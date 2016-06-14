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
        
        self.view.addSubview(topViewHolder)
        self.topViewHolder.frame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, 50)
        self.topViewHolder.backgroundColor = UIColor.whiteColor()
    }

}

