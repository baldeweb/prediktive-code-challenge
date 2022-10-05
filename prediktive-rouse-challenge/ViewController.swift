//
//  ViewController.swift
//  prediktive-rouse-challenge
//
//  Created by Wallace Baldenebre on 04/10/22.
//

import UIKit

class ViewController: UIViewController {
    private let viewModel = StoreViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.getStore()
        viewModel.storeResult = { (response) in
            print("RESPONSE: \(response)")
        }
    }


}

