//
//  Model.swift
//  SwiftYoutubeTest
//
//  Created by Clint Favor on 3/5/21.
//

import Foundation

class Model {
    func getVideos() {
        let url = URL(string: Constants.YOUTUBE_API_URL)
        
        guard url != nil else { return }
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { data, response, error in
            if (error != nil || data == nil) {
                return
            }
        }
        
        dataTask.resume()
    }
}
