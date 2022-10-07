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
        registerCustomCell()
    }
    
    private func registerCustomCell() {
        let cell = UINib(nibName: "StoreViewCellTableViewCell", bundle: nil)
        self.tableView.register(cell, forCellReuseIdentifier: "StoreViewCellTableViewCell")
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(listFree[indexPath.row])")
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StoreViewCellTableViewCell", for: indexPath) as? StoreViewCellTableViewCell
        let item = listFree[indexPath.row]
        self.loadImageFromUrl(imageView: cell?.imgLeading, free: item)
        cell?.lblName.text = item.name
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listFree.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    private func loadImageFromUrl(imageView: UIImageView?, free: AppModel) {
        let url = URL(string: free.leadingImageUrl)
        DispatchQueue.global(qos: .background).async {
            let data = try? Data(contentsOf: url!)
            DispatchQueue.main.async {
                imageView?.image = UIImage(data: data!)
            }
        }
    }
}
