//
//  MovieCell.swift
//  Favorite Movies
//
//  Created by Allen Czerwinski on 2/18/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit
import WebKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDesc: UILabel!
    @IBOutlet weak var imdbImg: UIImageView!
    @IBOutlet weak var movieImg: UIImageView!
    
    var webView: WKWebView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configureCell(movie: Movie) {
        movieTitle.text = movie.title
        movieDesc.text = movie.movieDescription
        imdbImg.image = UIImage(named: "imdb")
        movieImg.image = movie.getMovieImg()
    }

    @IBAction func imdbLinkPressed(sender: AnyObject) {
        
//        let frame = CGRectMake(0, 0, container.bounds.width, <#T##height: CGFloat##CGFloat#>)
        
    }
    
    
}
