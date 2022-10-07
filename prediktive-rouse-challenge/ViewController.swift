//
//  ViewController.swift
//  prediktive-rouse-challenge
//
//  Created by Wallace Baldenebre on 04/10/22.
//

import UIKit

class ViewController: UIViewController {
    private let viewModel = StoreViewModel()
    var listFree: [AppModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.getStore()
        viewModel.storeResult = { (response) in
            print("RESPONSE: \(response)")
            self.listFree = response.payload.free
        }
    }

    @IBAction func onRedirect(_ sender: Any) {
        let vc = StoreTableViewController()
        vc.listFree = self.listFree
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

