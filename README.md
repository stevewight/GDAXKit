# GDAXKit
  Unofficial Swift 4 client library for accessing 💰*[gdax.com's](https://www.gdax.com)*💰 public market data through both the REST [Market Data](https://docs.gdax.com/#market-data) API and the real time [Websocket Feed](https://docs.gdax.com/#websocket-feed)
  
## Getting Started
  [Gdax.com](https://www.gdax.com) is "The Most Trusted Digital Asset Exchange" and offers an extensive real time market data API for a handful of the biggest 💵*cryptoCurrencies*💵
  
### The Docs
  Take a look at the [API Docs](https://docs.gdax.com/) for an overview and more information on the publicly available currency data.  
  
Note: *GDAXKit* currently only makes public data available and does not allow for accessing endpoints or websockets that require authentication.

## Installation
The easiest way to use GDAXKit is with CocoaPods

### Installation with CocoaPods
To integrate GDAXKit into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
platform :ios, '11.0'

target 'TargetName' do
  pod 'GDAXKit', :git => 'https://github.com/stevewight/GDAXKit.git'
end
```

Then, run the following command:

```bash
$ pod install
```
  
## Usage
  Depending upon the data you want to access, you will use one of the two client objects.
  
### Market Data API (MarketClient)
```swift
// Initialize a client
let client = MarketClient()

// Call one of the public endpoint methods
client.loadProducts { products in
	// Do lots of cool things w/each *Product* object
}

// All methods take a closure to handle returned objects
```
#### MarketClient's Public Interface

* loadProducts ([Products Docs](https://docs.gdax.com/#products))
* loadCurrencies ([Currencies](https://docs.gdax.com/#currencies))
* loadBook ([Order Book](https://docs.gdax.com/#get-product-order-book))
* loadTicker ([Ticker](https://docs.gdax.com/#get-product-ticker))
* loadTrades ([Trades](https://docs.gdax.com/#get-trades))
* loadHistoricRates ([Historic Rates](https://docs.gdax.com/#get-historic-rates))
* load24HourStats ([24 Hour Stats](https://docs.gdax.com/#get-24hr-stats))
* loadTime ([Server Time](https://docs.gdax.com/#time))

### Socket Feed (SocketClient)
To access the websocket's real time updates, conform to the ***SocketClientDelegate*** protocol methods:

```swift
extension MyViewController: SocketClientDelegate {
	func socketClientConnected() { /.../ }
	func socketClientDisconnected() { /.../ }
	func socketClientTick(_ tick:SocketTicker)
  	func socketClientHeartbeat(_ heartbeat:Heartbeat)
   	func socketClientError(_ error:SocketError)
}
```
#### SocketClientDelegate Method Life-Cycle
When the client first connects successfully to the socket at ***wss://ws-feed.gdax.com***, the ```socketClientConnected``` method is called.

Depending upon the SocketClient method that is called either the ```socketClientTick``` or ```socketClientHeartbeat``` delegate method will begin to be called.  Any time the socket encounters an error, the ```socketClientError``` method will be called.

Finally the ```socketClientDisconnected``` method is called when connection to the socket ends.

#### Initializing Websocket Communication

To begin the socket stream, initialize the SocketClient by passing our delegate object in.  Once you have initiliazed the SocketClient, and conformed to the ***SocketClientDelegate*** methods above, call one of the start stream methods:

```swift
class MyViewController: UIViewController {
	let socketClient:SocketClient!
	
	override func viewDidLoad() {
		// Use Products you want data for, from client.loadProducts
		let products = /... Product array from MarketClient .../
	
		// Initialize SocketClient and pass self as delegate
		socketClient = SocketClient(delegate:self)
		
		// Start Our ticker stream
		socketClient.startTickerStream(products: products)
		
		// Our delegate methods will now get called as necessary
	}
}
```

#### SocketClient's Public Interface

* startTickerStream ([Ticker Socket](https://docs.gdax.com/#the-code-classprettyprinttickercode-channel))
* startHeartbeatStream ([Heartbeat Socket](https://docs.gdax.com/#the-code-classprettyprintheartbeatcode-channel))

## Pre-Release Version
This is a pre-release version of GDAXKit and although it is stable and should be working in all the above cases, things will be added, changed and potentially break.

## License
GDAXKit is released under the _***MIT***_ license
