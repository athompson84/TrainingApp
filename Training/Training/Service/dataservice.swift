//
//  dataservice.swift
//  Training
//
//  Created by Anthony Thompson on 4/4/18.
//  Copyright © 2018 GSU Team 5. All rights reserved.
//

/*
import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes logo graphic beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes logo hat black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes logo hat White", price: "$45", imageName: "hat03.png"),
        Product(title: "Devslopes logo snapback", price: "$33", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes logo hoodie grey", price: "$45", imageName: "hoodie01.png"),
        Product(title: "Devslopes logo hoodie red", price: "$45", imageName: "hoodie02.png"),
        Product(title: "Devslopes logo hoodie grey", price: "$45", imageName: "hoodie03.png"),
        Product(title: "Devslopes logo hoodie black", price: "$45", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes logo shirt black", price: "$79", imageName: "shirt01.png"),
        Product(title: "Devslopes badge shirt light grey", price: "$23", imageName: "shirt02.png"),
        Product(title: "Devslopes logo shirt red", price: "$10", imageName: "shirt03.png"),
        Product(title: "Hustle delegate Grey", price: "$45", imageName: "shirt04.png"),
        Product(title: "Kickflip studios black", price: "$45", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product]{
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITALGOODS":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product]{
        return hats
    }
    
    func getHoodies() -> [Product]{
        return hoodies
    }
    
    func getShirts() -> [Product]{
        return shirts
    }
    
    func getDigitalGoods() -> [Product]{
        return digitalGoods
    }
    
}
*/
