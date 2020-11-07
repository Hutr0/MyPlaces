//
//  Storage Manager.swift
//  MyPlaces
//
//  Created by Леонид Лукашевич on 07.11.2020.
//

import RealmSwift

let realm: Realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
    }
}
