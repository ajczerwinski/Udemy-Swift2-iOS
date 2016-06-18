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
    
    var views = Dictionary<String, AnyObject>()
    var constraints = [NSLayoutConstraint]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.darkGrayColor()
        self.topViewHolder.backgroundColor = UIColor.whiteColor()
        self.mainThumbViewHolder.backgroundColor = UIColor(red: 220.0 / 255.0, green: 224.0 / 255.0, blue: 210.0 / 255.0, alpha: 1.0)
        self.buttonViewHolder.backgroundColor = UIColor(red: 242.0 / 255.0, green: 241.0 / 255.0, blue: 239.0 / 255.0, alpha: 1.0)
        self.bottomViewHolder.backgroundColor = UIColor(red: 39.0 / 255.0, green: 61.0 / 255.0, blue: 72.0 / 255.0, alpha: 1.0)
        
        self.topThumbBtn.setImage(UIImage(named: "burger"), forState: .Normal)
        self.topTitleLbl.text = "FOOD SHACK"
        self.topTitleLbl.textColor = UIColor(red: 39.0 / 255.0, green: 61.0 / 255.0, blue: 72.0 / 255.0, alpha: 1.0)
        self.topTitleLbl.font = UIFont(name: "HelveticaNeue-Bold", size: 20)
        
        self.topViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.mainThumbViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.buttonViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.bottomViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.topThumbBtn.translatesAutoresizingMaskIntoConstraints = false
        self.topTitleLbl.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(topViewHolder)
        self.view.addSubview(mainThumbViewHolder)
        self.view.addSubview(buttonViewHolder)
        self.view.addSubview(bottomViewHolder)
        
        self.topViewHolder.addSubview(self.topThumbBtn)
        self.topViewHolder.addSubview(self.topTitleLbl)
        
        self.views["topViewHolder"] = topViewHolder
        self.views["mainThumbViewHolder"] = mainThumbViewHolder
        self.views["buttonViewHolder"] = buttonViewHolder
        self.views["bottomViewHolder"] = bottomViewHolder
        self.views["topThumbBtn"] = topThumbBtn
        self.views["topTitleLbl"] = topTitleLbl
        
        setConstraints()
        
    }
    
    func setConstraints() {
        
        /** TOP VIEW HOLDER **/
        addConstraint("V:|-[topViewHolder(50)]-0-[mainThumbViewHolder]")
        addConstraint("H:|-0-[topViewHolder]-0-|")
        
        /** MAIN VIEW HOLDER **/
        addConstraint("V:[mainThumbViewHolder(<=250@250)]-0-[buttonViewHolder]")
        addConstraint("V:[mainThumbViewHolder(>=150@250)]")
        addConstraint("H:|-0-[mainThumbViewHolder(==topViewHolder)]-0-|")
        
        /** BUTTON VIEW HOLDER **/
        addConstraint("V:[buttonViewHolder(<=200)]-0-[bottomViewHolder]")
        addConstraint("V:[buttonViewHolder(>=100)]")
        addConstraint("H:|-0-[buttonViewHolder(mainThumbViewHolder)]-0-|")
        
        /** BOTTOM VIEW HOLDER **/
        addConstraint("V:[bottomViewHolder(50)]-|")
        addConstraint("H:|-0-[bottomViewHolder(buttonViewHolder)]-0-|")
        
        /** TOP THUMB BUTTON **/
        addConstraint("V:|-5-[topThumbBtn(40)]")
        addConstraint("H:|-5-[topThumbBtn(40)]-1-[topTitleLbl]")
        
        /** TOP TITLE LABEL **/
        addConstraint("V:|-15-[topTitleLbl]")
        addConstraint("H:[topTitleLbl(>=50)]")
        
        NSLayoutConstraint.activateConstraints(self.constraints)
        
    }
    
    func addConstraint(format: String) {
        
        let newConstraints = NSLayoutConstraint.constraintsWithVisualFormat(format, options: [], metrics: nil, views: self.views)
        
        self.constraints += newConstraints
        
    }

}

