//
//  Stocks.swift
//  StocksAppSwiftUI
//
//  Created by Myron Dulay on 2/16/21.
//

import Foundation

struct Stock: Decodable {
  
  let symbol: String
  let description: String
  let price: Double
  let change: String
}
