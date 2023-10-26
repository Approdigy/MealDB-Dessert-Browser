//
//  MealsViewModel.swift
//  Peter_Minwegen_Fetch_Rewards
//
//  Created by peter minwegen on 10/25/23.
//

import Foundation

class MealsViewModel: ObservableObject {
    @Published var meals = [Meal]()
    
    func fetchMeals() {
        guard let url = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert") else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let data = data {
                do {
                    let decodedResponse = try JSONDecoder().decode(MealsResponse.self, from: data)
                    DispatchQueue.main.async {
                        self.meals = decodedResponse.meals
                    }
                } catch {
                    print("Error decoding meals: \(error)")
                }
            }
        }.resume()
    }
}
