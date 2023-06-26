//
//  ShopController.swift
//  Test_MVC
//
//  Created by Софья Норина on 26.06.2023.
//

import UIKit

class ShopController: UIViewController {
    
    private var shopModel = ProductGroup.vegetables()
    private var shopView: ShopView!{
        guard isViewLoaded else { return nil }
        return ( view as! ShopView )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }

}

private extension ShopController {
    func configure() {
        shopView.tableView.delegate = self
        shopView.tableView.dataSource = self
    }
}

extension ShopController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell")
        cell?.textLabel?.text = shopModel.product[indexPath.row].name
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shopModel.product.count
    }
}
