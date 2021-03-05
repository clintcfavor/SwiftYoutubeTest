//
//  ViewController.swift
//  SwiftYoutubeTest
//
//  Created by Clint Favor on 3/5/21.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model.getVideos()
    }


}

