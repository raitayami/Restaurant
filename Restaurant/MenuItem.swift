//
//  MenuItem.swift
//  Menu
//
//  Created by Tayami Rai on 27/09/2023.
//

import Foundation

struct MenuItem: Identifiable{
    
    var id: UUID = UUID()
    var name: String
    var price: String
    var imageName: String
}
