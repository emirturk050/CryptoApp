//
//  CryptoViewModel.swift
//  CryptoApp
//
//  Created by Emir Türk on 3.04.2023.
//

import Foundation

struct CryptoListViewModel {
    let cryptoCurrencyList : [cryptoCurrency]
    

    func numberOfRowsInSection() -> Int {
        return self.cryptoCurrencyList.count
    }
    
    func cryptoAtIndex(index: Int) -> cryptoViewModel {
        let crypto = self.cryptoCurrencyList[index]
        return cryptoViewModel(cryptoCurrency: crypto)
    }
}

struct cryptoViewModel {
    let cryptoCurrency : cryptoCurrency
    
    var name : String {
        return self.cryptoCurrency.currency
    }
    var price : String {
        return self.cryptoCurrency.price
    }
}
