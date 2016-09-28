//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    
    var items: [Item] = []
    
    func totalPriceInCents() -> Int {
        var sum = 0
        for item in items {
            sum += item.priceInCents
        }
        return sum
    }
    
    func add(item: Item) {
        items.append(item)
    }
    
    func remove(item: Item) {
        for (index, i) in items.enumerated() {
            if i == item {
                items.remove(at: index)
                break
            }
        }
    }
    
    func items(withName name: String) -> [Item] {
        var array: [Item] = []
        for item in items {
            if item.name == name {
                array.append(item)
            }
        }
        return array
    }
    
    func items(withMinPrice price: Int) -> [Item] {
        var array: [Item] = []
        for item in items {
            if item.priceInCents >= price {
                array.append(item)
            }
        }
        return array
    }
    
    func items(withMaxPrice price: Int) -> [Item] {
        var array: [Item] = []
        for item in items {
            if item.priceInCents <= price {
                array.append(item)
            }
        }
        return array
    }
}




















