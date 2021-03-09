//
//  ViewController.swift
//  SwiftYoutubeTest
//
//  Created by Clint Favor on 3/5/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var model = Model()
    var videos = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        model.delegate = self
        
        model.getVideos()
    }
    
    func videosFetched(_ videos: [Video]) {
        self.videos = videos
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard tableView.indexPathForSelectedRow != nil else { return }
        
        let selectedVideo = videos[tableView.indexPathForSelectedRow!.row]
        
        let detailVC = segue.destination as! DetailViewController
        detailVC.video = selectedVideo
    }
    
    // MARK:- TableView Methods

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEO_CELL_ID, for: indexPath) as! VideoTableViewCell
//        let title = self.videos[indexPath.row].title
        let video = self.videos[indexPath.row]

//        cell.textLabel?.text = title
        cell.setCell(video)

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

}

