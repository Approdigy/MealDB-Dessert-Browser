//
//  MealDetailViewModel.swift
//  Peter_Minwegen_Fetch_Rewards
//
//  Created by peter minwegen on 10/25/23.
//

import Foundation

class MealDetailViewModel: ObservableObject {
    @Published var selectedMealDetail: MealDetail?
    @Published var isDataFetched = false
    func fetchMealDetails(for meal: Meal) {
        guard let url = URL(string: "https://themealdb.com/api/json/v1/1/lookup.php?i=\(meal.idMeal)") else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let data = data {
                do {
                    let decodedResponse = try JSONDecoder().decode(MealDetailResponse.self, from: data)
                    DispatchQueue.main.async {
                        self.selectedMealDetail = decodedResponse.meals.first
                        self.isDataFetched = true
                    }
                } catch {
                    print("Error decoding meal details: \(error)")
                }
            }
        }.resume()
    }
}
