//: Playground - noun: a place where people can play

import Cocoa

class Transaction {
  
  var from: String
  var to: String
  var amount: Double
  
  init(from: String, to: String, amount: Double) {
    self.from = from
    self.to = to
    self.amount = amount
  }
}

class Block {
  
  var index: Int = 0
  var previousHash: String = ""
  var hash: String!
  var nounce: Int
  
  private (set) var transaction = [Transaction]()
  
  init() {
    self.nounce = 0
  }
}


class BlockChain {
  
  private (set) var block = [Block]()
  
  
}
