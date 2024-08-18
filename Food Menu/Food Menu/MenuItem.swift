//
//  MenuItem.swift
//  Food Menu
//
//  Created by Dimitri Nelson on 8/12/24.
//

import Foundation

struct  MenuItem : Identifiable{
    var id: UUID = UUID()
    var  name : String
    var price : String
    var imageName : String
}
