//
//  PostCell.swift
//  Udemy App Showcase
//
//  Created by Allen Czerwinski on 2/25/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit
import Alamofire
import Firebase

class PostCell: UITableViewCell {
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var showcaseImg: UIImageView!
    @IBOutlet weak var descriptionText: UITextView!
    @IBOutlet weak var likesLbl: UILabel!
    @IBOutlet weak var likeImage: UIImageView!
    
    var request: Request?
    var likeRef: Firebase!
    
    private var _post: Post?
    
    var post: Post? {
        return _post
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let tap = UITapGestureRecognizer(target: self, action: "likeTapped:")
        tap.numberOfTapsRequired = 1
        likeImage.addGestureRecognizer(tap)
        likeImage.userInteractionEnabled = true
        
    }
    
    override func drawRect(rect: CGRect) {
        profileImg.layer.cornerRadius = profileImg.frame.size.width / 2
        profileImg.clipsToBounds = true
        showcaseImg.clipsToBounds = true
        likeImage.layer.cornerRadius = likeImage.frame.size.width / 2
        likeImage.clipsToBounds = true
    }

    func configureCell(post: Post, img: UIImage?) {
        self.showcaseImg.image = nil
        self._post = post
        self.likeRef = DataService.ds.REF_USER_CURRENT.childByAppendingPath("likes").childByAppendingPath(post.postKey)
        
        if let desc = post.postDescription where post.postDescription != "" {
            self.descriptionText.text = desc
        } else {
            self.descriptionText.hidden = true
        }
//        self.descriptionText.text = post.postDescription
        self.likesLbl.text = "\(post.likes)"
        
        if post.imageUrl != nil {
            
            if img != nil {
                showcaseImg.image = img
                
            } else {
                
                request = Alamofire.request(.GET, post.imageUrl!).validate(contentType: ["image/*"]).response(completionHandler: { request, response, data, err in
                    if err == nil {
                        
                        // TODO should turn this into an if let
                        
                        let img = UIImage(data: data!)!
                        self.showcaseImg.image = img
                        FeedVC.imageCache.setObject(img, forKey: self.post!.imageUrl!)
                    } else {
                        print(err.debugDescription)
                    }
                })
            }
        } else {
            self.showcaseImg.hidden = true
        }
        
        likeRef.observeSingleEventOfType(.Value, withBlock: { snapshot in
            
            if let doesNotExist = snapshot.value as? NSNull {
            
                // This means we have not liked this specific post
                self.likeImage.image = UIImage(named: "heart-empty")
                
            } else {
                self.likeImage.image = UIImage(named: "heart-full")
            }
            
        })
        
    }
    
    func likeTapped(sender: UITapGestureRecognizer) {
        likeRef.observeSingleEventOfType(.Value, withBlock: { snapshot in
            
            if let doesNotExist = snapshot.value as? NSNull {
                
                // This means we have not liked this specific post
                self.likeImage.image = UIImage(named: "heart-full")
                self.likeRef.setValue(true)
                self.post!.adjustLikes(true)
                
            } else {
                self.likeRef.removeValue()
                self.likeImage.image = UIImage(named: "heart-empty")
                self.post!.adjustLikes(false)
            }
            
            self.likesLbl.text = "\(self.post!.likes)"
            
        })
    }

}
