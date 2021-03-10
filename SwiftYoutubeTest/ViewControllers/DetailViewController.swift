//
//  DetailViewController.swift
//  SwiftYoutubeTest
//
//  Created by Clint Favor on 3/9/21.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var textView: UITextView!
    
    var video:Video?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        titleLabel.text = ""
        dateLabel.text = ""
        textView.text = ""
        
        guard video != nil else { return }
        
        let embedUrlString = Constants.YOUTUBE_EMBED_URL + video!.videoId
        let url = URL(string: embedUrlString)
        
        let request = URLRequest(url: url!)
        webView.load(request)
        
        titleLabel.text = video?.title
        
        let date = DateFormatHelper.formatDate(self.video!.published)
        
//        dateFormat.dateFormat = "EEEE, MMM d, yyyy"
//
//        dateLabel.text = dateFormat.string(from: self.video!.published)
        dateLabel.text = date
        
        
        textView.text = video?.description
    }
}
