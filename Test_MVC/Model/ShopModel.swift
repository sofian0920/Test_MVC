//
//  ShopModel.swift
//  Test_MVC
//
//  Created by Софья Норина on 26.06.2023.
//

import Foundation

public struct Product {
    public let name: String
}


public struct ProductGroup {
    public let product: [Product]
    public let title: String
}

extension ProductGroup{
    
    public static func vegetables() -> ProductGroup {
        let products = [
            Product(name: "Огурцы"),
            Product(name: "Помидоры"),
            Product(name: "Капуста"),
        ]
        return ProductGroup(product: products, title: "Овощи")
    }
}
