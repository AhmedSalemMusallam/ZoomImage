//
//  ViewController.swift
//  ZoomImage
//
//  Created by Ahmed Salem on 13/02/2023.
//

import UIKit

class ViewController: UIViewController {

    //Mark:- Outlets
    @IBOutlet weak var scrollViewOutlet: UIScrollView!
    
    
    @IBOutlet weak var imageViewOutlest: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpScrollView()
    }
    
    //Mark:- set up scroll view delegation
    func setUpScrollView()
    {
        scrollViewOutlet.delegate = self
    }

}

extension ViewController: UIScrollViewDelegate{
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageViewOutlest
    }
}

