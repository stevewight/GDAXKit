//
//  Currency.swift
//  c01ns
//
//  Created by Steve on 12/28/17.
//  Copyright © 2017 Steve Wight. All rights reserved.
//

import UIKit

public class Currency:Decodable {
    public let id:String
    public let name:String
    public let minSize:String
    public let status:String
    public let message:String?
    
    enum CodingKeys: String, CodingKey {
        case id, name, status, message
        case minSize = "min_size"
    }
    
}
