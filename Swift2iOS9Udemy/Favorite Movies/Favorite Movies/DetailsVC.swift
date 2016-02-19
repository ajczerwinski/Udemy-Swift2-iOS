//
//  DetailsVC.swift
//  Favorite Movies
//
//  Created by Allen Czerwinski on 2/18/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {
    
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDesc: UILabel!
    @IBOutlet weak var imdbURL: UILabel!
    @IBOutlet weak var imdbPlot: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        func configureCell(movie: Movie) {
            movieTitle.text = movie.title
            movieDesc.text = movie.movieDescription
            movieImg.image = movie.getMovieImg()
            imdbURL.text = movie.link
            imdbPlot.text = movie.plot
        }
    }
    
}
