//
//  Favorite.swift
//  SnowSeeker
//
//  Created by Giovanni Gaffé on 2022/1/25.
//

import Foundation

class Favorites: ObservableObject {
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
    
    func remove(_ resort: Resort) {
        objectWillChange.send()
        resorts.remove(resort.id)
        save()
    }
    
    func save() {
        // write our data
    }
}
