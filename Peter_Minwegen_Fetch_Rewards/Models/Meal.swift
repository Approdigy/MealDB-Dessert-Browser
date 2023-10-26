//
//  Meal.swift
//  Peter_Minwegen_Fetch_Rewards
//
//  Created by peter minwegen on 10/25/23.
//

import Foundation

struct Meal: Identifiable, Decodable, Hashable {
    var idMeal: String
    var strMeal: String
    var strMealThumb: String
    var id: String { idMeal }
}

struct MealsResponse: Decodable {
    var meals: [Meal]
}
