//
//  Model.swift
//  SwiftYoutubeTest
//
//  Created by Clint Favor on 3/5/21.
//

import Foundation

protocol ModelDelegate {
    func videosFetched(_ videos: [Video])
}

class Model {
    var delegate: ModelDelegate?
    
    func getVideos() {
        let url = URL(string: Constants.YOUTUBE_API_URL)
        
        guard url != nil else { return }
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { data, response, error in
            if (error != nil || data == nil) {
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                if response.items != nil {
                    DispatchQueue.main.async {
                        self.delegate?.videosFetched(response.items!)
                    }
                }
            } catch {
                print(error)
            }
        }
        
        dataTask.resume()
    }
}
