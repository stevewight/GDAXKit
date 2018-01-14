//
//  DateDecoder.swift
//  GDAXKit
//
//  Created by Steve on 1/13/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

class DateDecoder: NSObject {

    public class func custom(decoder:Decoder)->Date {
        do {
            let container = try decoder.singleValueContainer()
            let dateStr = try container.decode(String.self)
            if let date = formatter().date(from: dateStr) {
                return date
            }
        } catch { }
        return Date()
    }
    
    private class func formatter()->DateFormatter {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXXXX"
        return formatter
    }
    
}
