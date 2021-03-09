//
//  ConstantsTemplate.swift
//  SwiftYoutubeTest
//
//  Created by Clint Favor on 3/9/21.
//

import Foundation

struct ConstantsTemplate {
    static var YOUTUBE_API_KEY = ""
    static var YOUTUBE_PLAYLIST_ID = ""
    static var YOUTUBE_API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.YOUTUBE_PLAYLIST_ID)&key=\(Constants.YOUTUBE_API_KEY)"
    static var YOUTUBE_EMBED_URL = ""
    static var VIDEO_CELL_ID = ""
}
