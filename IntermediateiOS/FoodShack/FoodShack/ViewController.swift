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
        
        configureUIElements()
        
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
        
        addConstraint("V:|-20-[burgerBtn(70)]-20-[pizzaBtn(70)]")
        addConstraint("H:|-35-[burgerBtn(70)]-<=100-[sandwichBtn(70)]")
        addConstraint("V:|-20-[sandwichBtn(70)]-20-[tacoBtn(70)]")
        addConstraint("H:|-35-[pizzaBtn(70)]-<=100-[tacoBtn(70)]")
        
        
        /** BOTTOM VIEW HOLDER **/
        addConstraint("V:[bottomViewHolder(50)]-|")
        addConstraint("H:|-0-[bottomViewHolder(buttonViewHolder)]-0-|")
        
        addConstraint("V:|-10-[orderNowBtn(30)]")
        addConstraint("H:[orderNowBtn(150)]-10-|")
        
        /** TOP THUMB BUTTON **/
        addConstraint("V:|-5-[topThumbBtn(40)]")
        addConstraint("H:|-5-[topThumbBtn(40)]-10-[topTitleLbl]")
        
        /** TOP TITLE LABEL **/
        addConstraint("V:|-15-[topTitleLbl]")
        addConstraint("H:[topTitleLbl(>=50)]")
        
        /** SELECTED ITEM THUMB IMAGE **/
        addConstraint("V:|-35-[selectedItemThumbImg(200)]")
        addConstraint("H:|-60-[selectedItemThumbImg(200)]")
        
        NSLayoutConstraint.activateConstraints(self.constraints)
        
    }
    
    func addConstraint(format: String) {
        
        let newConstraints = NSLayoutConstraint.constraintsWithVisualFormat(format, options: [], metrics: nil, views: self.views)
        
        self.constraints += newConstraints
        
    }
    
    func configureUIElements() {
        
        setViewBackgroundColors()
        
        configureButtons()
        
        configureLabels()
        
        setTranslatesAutoresizingMaskIntoConstraintsToFalse()
        
        addAllOfTheSubviews()
        
        populateViews()
        
    }
    
    func setTranslatesAutoresizingMaskIntoConstraintsToFalse() {
    
        self.topViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.mainThumbViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.buttonViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.bottomViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.topThumbBtn.translatesAutoresizingMaskIntoConstraints = false
        self.topTitleLbl.translatesAutoresizingMaskIntoConstraints = false
        self.selectedItemThumbImg.translatesAutoresizingMaskIntoConstraints = false
        self.burgerBtn.translatesAutoresizingMaskIntoConstraints = false
        self.pizzaBtn.translatesAutoresizingMaskIntoConstraints = false
        self.sandwichBtn.translatesAutoresizingMaskIntoConstraints = false
        self.tacoBtn.translatesAutoresizingMaskIntoConstraints = false
        self.orderNowBtn.translatesAutoresizingMaskIntoConstraints = false
    
    }
    
    func addAllOfTheSubviews() {
        
        // Add Subviews to main view
        self.view.addSubview(topViewHolder)
        self.view.addSubview(mainThumbViewHolder)
        self.view.addSubview(buttonViewHolder)
        self.view.addSubview(bottomViewHolder)
        
        // Add elements to topViewHolder subview
        self.topViewHolder.addSubview(self.topThumbBtn)
        self.topViewHolder.addSubview(self.topTitleLbl)
        
        // Add elements to mainThumbViewHolder subview
        self.mainThumbViewHolder.addSubview(self.selectedItemThumbImg)
        
        // Add elements to buttonViewHolder subview
        self.buttonViewHolder.addSubview(self.burgerBtn)
        self.buttonViewHolder.addSubview(self.pizzaBtn)
        self.buttonViewHolder.addSubview(self.sandwichBtn)
        self.buttonViewHolder.addSubview(self.tacoBtn)
        
        // Add elements to bottomViewHolder subview
        self.bottomViewHolder.addSubview(self.orderNowBtn)
        
    }
    
    func populateViews() {
        
        self.views["topViewHolder"] = topViewHolder
        self.views["mainThumbViewHolder"] = mainThumbViewHolder
        self.views["buttonViewHolder"] = buttonViewHolder
        self.views["bottomViewHolder"] = bottomViewHolder
        self.views["topThumbBtn"] = topThumbBtn
        self.views["topTitleLbl"] = topTitleLbl
        self.views["selectedItemThumbImg"] = selectedItemThumbImg
        self.views["burgerBtn"] = burgerBtn
        self.views["pizzaBtn"] = pizzaBtn
        self.views["sandwichBtn"] = sandwichBtn
        self.views["tacoBtn"] = tacoBtn
        self.views["orderNowBtn"] = orderNowBtn
        
    }
    
    func setViewBackgroundColors() {
        
        self.view.backgroundColor = UIColor.darkGrayColor()
        self.topViewHolder.backgroundColor = UIColor.whiteColor()
        self.mainThumbViewHolder.backgroundColor = UIColor(red: 220.0 / 255.0, green: 224.0 / 255.0, blue: 210.0 / 255.0, alpha: 1.0)
        self.buttonViewHolder.backgroundColor = UIColor(red: 242.0 / 255.0, green: 241.0 / 255.0, blue: 239.0 / 255.0, alpha: 1.0)
        self.bottomViewHolder.backgroundColor = UIColor(red: 39.0 / 255.0, green: 61.0 / 255.0, blue: 72.0 / 255.0, alpha: 1.0)
        
    }
    
    func configureButtons() {
        
        // STYLE AND SIZING FOR TOP VIEW HOLDER AREA BUTTON
        self.topThumbBtn.setImage(UIImage(named: "burger"), forState: .Normal)
        
        // STYLE AND SIZING FOR BUTTON VIEW HOLDER AREA BUTTONS
        self.burgerBtn.setImage(UIImage(named: "burger"), forState: .Normal)
        self.pizzaBtn.setImage(UIImage(named: "pizza"), forState: .Normal)
        self.sandwichBtn.setImage(UIImage(named: "sandwich"), forState: .Normal)
        self.tacoBtn.setImage(UIImage(named: "taco"), forState: .Normal)
        
        // STYLE AND SIZING FOR BOTTOM VIEW HOLDER AREA BUTTONS
        self.orderNowBtn.backgroundColor = UIColor(red: 254.0 / 255.0, green: 213.0 / 255.0, blue: 71.0 / 255.0, alpha: 1.0)
        self.orderNowBtn.setTitle("ORDER NOW", forState: .Normal)
        self.orderNowBtn.setTitleColor(UIColor(red: 39.0 / 255.0, green: 61.0 / 255.0, blue: 72.0 / 255.0, alpha: 1.0), forState: .Normal)
        self.orderNowBtn.titleLabel!.font = UIFont(name: "HelveticaNeue-Bold", size: 20)
        self.orderNowBtn.layer.cornerRadius = 3
        self.orderNowBtn.clipsToBounds = true
        
    }
    
    func configureLabels() {
        
        // STYLE AND SIZING FOR TOP VIEW HOLDER AREA LABEL
        self.topTitleLbl.text = "FOOD SHACK"
        self.topTitleLbl.textColor = UIColor(red: 39.0 / 255.0, green: 61.0 / 255.0, blue: 72.0 / 255.0, alpha: 1.0)
        self.topTitleLbl.font = UIFont(name: "HelveticaNeue-Bold", size: 20)
        
    }
    
}

