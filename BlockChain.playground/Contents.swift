//: Playground - noun: a place where people can play

import Cocoa

class Transaction: Codable {
  
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
  
  private (set) var transactions: [Transaction] = [Transaction]()

  var key: String {
    get {
      
      let transactionData = try! JSONEncoder().encode(self.transactions)
      let transactionJSONString = String(data: transactionData, encoding: .utf8)
      
      return String(self.index) + self.previousHash + String(self.nounce) + transactionJSONString!
    }
  }
  
  func addTransaction(transaction: Transaction) {
    self.transactions.append(transaction)
  }
  
  init() {
    self.nounce = 0
  }
}


class BlockChain {
  
  private (set) var blocks: [Block] = [Block]()
  
  
}

let transaction = Transaction(from: "Mary", to: "Steve", amount: 20)

let block1 = Block()
block1.addTransaction(transaction: transaction)
block1.key



