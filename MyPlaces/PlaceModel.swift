//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Леонид Лукашевич on 04.11.2020.
//

import UIKit

struct Place {
    
    var name: String
    var location: String?
    var type: String?
    var image: UIImage?
    var restaurantImage: String?
    
    static let restaurantNames = ["Балкан Гриль", "Бочка", "Вкусные истории",
                           "Дастархан", "Индокитай", "Классик",
                           "Шок", "Bonsai", "Burger Heroes", "Kitchen",
                           "Love&Life", "Morris Pub", "Sherlock Holmes",
                           "Speak Easy", "X.O"]
    
    static func getPlaces() -> [Place] {
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "Москва", type: "Ресторан", image: nil, restaurantImage: place))
        }
        
        return places
    }
}
