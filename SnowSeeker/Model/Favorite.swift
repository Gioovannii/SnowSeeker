//
//  Favorite.swift
//  SnowSeeker
//
//  Created by Giovanni Gaffé on 2022/1/25.
//

import Foundation
class Favorite: ObservableObject {
    private var resorts: Set<String>
    
    private let saveKey = "Favorites"

    init() {
        // load our save data
        
        resorts = []
    }
    
    func contains(_ resort: Resort) -> Bool {
        resorts.contains(resort.id)
    }
    
    func add(_ resort: Resort) {
        objectWillChange.send()
        resorts.insert(resort.id)
        save()
    }
    
}
