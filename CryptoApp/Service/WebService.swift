//
//  WebService.swift
//  CryptoApp
//
//  Created by Emir Türk on 1.04.2023.
//

import Foundation

class WebService {
   
    func downloadCurrencies(url: URL , completion: @escaping([cryptoCurrency]?) -> () ) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }
            else if let data = data {
                
                let cryptoList = try? JSONDecoder().decode([cryptoCurrency].self, from: data)
                
                if let cryptoList = cryptoList {
                    completion(cryptoList)
                }
            }
        }.resume()
        
    }
}
