//
//  Client.swift
//  c01ns
//
//  Created by Steve on 12/28/17.
//  Copyright © 2017 Steve Wight. All rights reserved.
//

import UIKit

class Client: NSObject {

    let baseURL = "https://api.gdax.com"
    var dataTask: URLSessionDataTask?
    let session = URLSession.shared
    
    public func loadProducts(complete:@escaping (_ products:[Product])->Void) {
        makeRequest(router: Router.products(), factory: Factory.products()) { items in
            complete(items as! [Product])
        }
    }
    
    public func loadCurrencies(complete:@escaping (_ currencies:[Currency])->Void) {
        makeRequest(router: Router.currencies(), factory: Factory.currencies()) { items in
            complete(items as! [Currency])
        }
    }
    
    public func loadBook(productID:String, complete:@escaping (_ books:[Book])->Void) {
        makeRequest(router: Router.book(productID: productID), factory: Factory.book()) { items in
            complete(items as! [Book])
        }
    }
    
    public func loadTicker(productID:String, complete:@escaping (_ tickers:[Ticker])->Void) {
        makeRequest(router: Router.ticker(productID: productID), factory: Factory.ticker()) { items in
            complete(items as! [Ticker])
        }
    }
    
    public func loadTrades(productID:String, complete:@escaping (_ trades:[Trade])->Void) {
        makeRequest(router: Router.trades(productID: productID), factory: Factory.trades()) { items in
            complete(items as! [Trade])
        }
    }
    
    public func loadHistoricRates(productID:String, complete:@escaping (_ candles:[Candle])->Void) {
        makeRequest(router: Router.historic(productID: productID), factory: Factory.historic()) { items in
            complete(items as! [Candle])
        }
    }
    
    public func load24HourStats(productID:String, complete:@escaping (_ stats:[Stat])->Void) {
        makeRequest(router: Router.stats(productID: productID), factory: Factory.stats()) { items in
            complete(items as! [Stat])
        }
    }
    
    public func loadTime(complete:@escaping (_ times:[ServerTime])->Void) {
        makeRequest(router: Router.time(), factory: Factory.time()) { items in
            complete(items as! [ServerTime])
        }
    }
    
    private func makeRequest(router:Router, factory:Factory, complete:@escaping (_ items:[Any])->Void) {
        dataTask = session.dataTask(with: router.url()) { data, response, error in
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
