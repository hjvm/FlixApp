//
//  DetailViewController.swift
//  FlixApp
//
//  Created by Héctor J. Vázquez on 6/16/16.
//  Copyright © 2016 Héctor J. Vázquez. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var blurrView: UIVisualEffectView!
    

    
    var movie: NSDictionary!
    override func viewDidLoad() {

        super.viewDidLoad()
        
        
        scrollView.contentSize = CGSize(width: scrollView.frame.width + infoView.frame.width, height: scrollView.frame.height)
        
        let title = movie["title"] as? String
        titleLabel.text = title
        
        let overview = movie["overview"] as? String
        overviewLabel.text = overview
        overviewLabel.sizeToFit()
        
        let baseURL = "http://image.tmdb.org/t/p/w500"
        if let posterPath = movie["poster_path"] as? String{
            let imageURL = NSURL(string: baseURL + posterPath)
            posterImageView.setImageWithURL(imageURL!)
         


            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
