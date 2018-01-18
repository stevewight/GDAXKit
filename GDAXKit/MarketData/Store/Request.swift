//
//  Request.swift
//  GDAXKit
//
//  Created by Steve on 1/18/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

class Request {

    let baseURL = "https://api.gdax.com"
    let session = URLSession.shared
    var dataTask: URLSessionDataTask?
    
    public func run(router:Router,
                    factory:Factory,
                    complete:@escaping (_ items:[Any])->Void) {
        
        dataTask = session.dataTask(with: router.request()) { data, response, error in
            let response = response as? HTTPURLResponse
            
            if response?.statusCode == 200 {
                let items = factory.build(data!)
                complete(items)
            } else {
                print("Incorrect status code")
            }
        }
        dataTask?.resume()
    }
    
}
