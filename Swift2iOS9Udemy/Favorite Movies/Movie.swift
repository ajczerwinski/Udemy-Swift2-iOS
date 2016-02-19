//
//  Movie.swift
//  Favorite Movies
//
//  Created by Allen Czerwinski on 2/18/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Movie: NSManagedObject {
    
    func setMovieImage(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getMovieImg() -> UIImage {
        let img = UIImage(data: self.image!)!
        return img
    }

}
