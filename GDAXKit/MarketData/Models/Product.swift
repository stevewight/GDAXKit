//
//  Product.swift
//  c01ns
//
//  Created by Steve on 12/28/17.
//  Copyright © 2017 Steve Wight. All rights reserved.
//

import UIKit

class Product:Decodable {
    let id:String
    let baseCurrency:String
    let quoteCurrency:String
    let baseMinSize:String
    let baseMaxSize:String
    let quoteIncrement:String
    let displayName:String
    let status:String
    let marginEnabled:Bool
    let statusMessage:String?
    
    enum CodingKeys: String, CodingKey {
        case id, status
        case baseCurrency = "base_currency"
        case quoteCurrency = "quote_currency"
        case baseMinSize = "base_min_size"
        case baseMaxSize = "base_max_size"
        case quoteIncrement = "quote_increment"
        case displayName = "display_name"
        case marginEnabled = "margin_enabled"
        case statusMessage = "status_message"
    }
    
    init(pid:String) {
        id = pid
        baseCurrency = ""
        quoteCurrency = ""
        baseMinSize = ""
        baseMaxSize = ""
        quoteIncrement = ""
        displayName = ""
        status = ""
        marginEnabled = false
        statusMessage = ""
    }
}
