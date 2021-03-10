//
//  DateFormatHelper.swift
//  SwiftYoutubeTest
//
//  Created by Clint Favor on 3/10/21.
//

import Foundation

class DateFormatHelper {
    static func formatDate(_ date:Date) -> String {
        let dateFormat = DateFormatter()
        
        dateFormat.dateFormat = "EEEE, MMM d, yyyy"
        
        return dateFormat.string(from: date)
    }
}
