//
//  StoreTableViewController.swift
//  prediktive-rouse-challenge
//
//  Created by Trabalho on 06/10/22.
//

import Foundation
import UIKit

class StoreTableViewController: UITableViewController {
    private let viewModel = StoreViewModel()
    var listFree: [AppModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "storeCell")
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(listFree[indexPath.row])")
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "storeCell", for: indexPath)
        let item = listFree[indexPath.row]
        cell.textLabel?.text = item.name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listFree.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
}
