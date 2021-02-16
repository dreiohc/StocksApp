//
//  WebService.swift
//  StocksAppSwiftUI
//
//  Created by Myron Dulay on 2/16/21.
//

import Foundation

class WebService {
  
  func getStocks(completion: @escaping ([Stock]?) -> ()) {
    
    guard let url = URL(string: "https://island-bramble.glitch.me/stocks") else {
      fatalError("Invalid URL")
    }
    
    URLSession.shared.dataTask(with: url) { data, response, error in
            
      guard let data = data, error == nil else {
        completion(nil)
        return
      }
      
      let stocks = try? JSONDecoder().decode([Stock].self, from: data)
      stocks == nil ? completion(nil) : completion(stocks)

    }.resume()
    
  }
  
}
