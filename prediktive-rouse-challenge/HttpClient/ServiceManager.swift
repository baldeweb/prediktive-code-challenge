//
//  ServiceManager.swift
//  prediktive-rouse-challenge
//
//  Created by Wallace Baldenebre on 04/10/22.
//

import Foundation

struct ServiceManager {
    func getData<T:Decodable>(resultType: T.Type, completionHandler: @escaping(_ result: T?) -> Void) {
        do {
            URLSession.shared.dataTask(with: URL(string: GlobalStrings.baseUrl)!) { (responseData, httpUrlResponse, error) in
                if(error == nil && responseData != nil && responseData?.count != 0) {
                    let decoder = JSONDecoder()
                    do {
                        let result = try decoder.decode(T.self, from: responseData!)
                        completionHandler(result)
                    }
                    catch let error{
                        debugPrint("ServiceManager = Decoding Error: \(error)")
                    }
                }
            }.resume()
        } catch let error {
            debugPrint(error)
        }
    }
}
