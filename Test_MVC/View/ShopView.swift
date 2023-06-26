//
//  ShopView.swift
//  Test_MVC
//
//  Created by Софья Норина on 26.06.2023.
//

import UIKit

class ShopView: UIView {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    func configure() {
        tableView.estimatedRowHeight = 50
        tableView.rowHeight = 100
    }
}
