//
//  Router.swift
//  c01ns
//
//  Created by Steve on 12/29/17.
//  Copyright © 2017 Steve Wight. All rights reserved.
//

import UIKit

protocol URLRequestProtocol {
    func url()->URL
}

enum Router:URLRequestProtocol {
    static let baseURL = "https://api.gdax.com"

    case products()
    case currencies()
    case book(productID:String)
    case ticker(productID:String)
    case trades(productID:String)
    case historic(productID:String)
    case stats(productID:String)
    case time()
    
    public func url()->URL {
        let url = Router.baseURL + path()
        return URL(string:url)!
    }
    
    private func path()->String {
        switch self {
        case .products():
            return "/products"
        case .currencies():
            return "/currencies"
        case let .book(productID):
            return "/products/\(productID)/book"
        case let .ticker(productID):
            return "/products/\(productID)/ticker"
        case let .trades(productID):
            return "/products/\(productID)/trades"
        case let .historic(productID):
            return "/products/\(productID)/candles"
        case let .stats(productID):
            return "/products/\(productID)/stats"
        case .time():
            return "/time"
        }
    }
    
}
