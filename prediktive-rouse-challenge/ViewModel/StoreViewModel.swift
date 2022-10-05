//
//  StoreViewModel.swift
//  prediktive-rouse-challenge
//
//  Created by Trabalho on 04/10/22.
//

import Foundation

class StoreViewModel: BaseViewModel {
    var storeResult: (StoreResponse) -> Void = { _ in }
    
    func getStore() {
        service.getData(resultType: StoreResponse.self) { (response) in
            guard let data = response else { return }
            self.storeResult(data)
        }
    }
}
