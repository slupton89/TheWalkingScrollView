//
//  ViewController.swift
//  TheWalkingScrollView
//
//  Created by Shane Lupton on 11/29/15.
//  Copyright © 2015 Shane Lupton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    let WIDTH: CGFloat = 240
    let HEIGHT: CGFloat = 397
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for var x = 1; x <= 5; x++ {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            scrollView.addSubview(imgView)
            
            imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 340, WIDTH, HEIGHT)
        }
        
        scrollView.contentSize = CGSizeMake(WIDTH * 5, scrollView.frame.size.height)
        
    }


}

