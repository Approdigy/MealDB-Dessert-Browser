//
//  MealDetailView.swift
//  Peter_Minwegen_Fetch_Rewards
//
//  Created by peter minwegen on 10/25/23.
//

import Foundation
import SwiftUI

struct MealDetailView: View {
    @ObservedObject var mealDetailViewModel: MealDetailViewModel
    var meal: Meal
    var mealTitle: String
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView{
                VStack(alignment: .leading, spacing: 10) {
                    if let mealDetail = mealDetailViewModel.selectedMealDetail {
                        AsyncImage(url: URL(string: mealDetail.strMealThumb)) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .scaledToFit()
                        .frame(maxWidth: geometry.size.width)
                        .cornerRadius(20)
                        if mealDetailViewModel.isDataFetched {
                            Text("Ingredients:")
                                .font(.title2)
                                .fontWeight(.bold)
                            VStack {
                                ForEach(Array(mealDetail.ingredientPairs.enumerated()), id: \.offset) { index, pair in
                                    HStack{
                                        Text("- \(pair.ingredient)")
                                        Spacer()
                                        if let measure = pair.measure, !measure.isEmpty{
                                            Text(measure).fontWeight(.medium)
                                        }
                                    }
                                }
                            }
                            Text("Instructions:")
                                .font(.title2)
                                .fontWeight(.bold)
                            Text(addLineNumbers(to: mealDetail.strInstructions))
                                .multilineTextAlignment(.leading)
                        }
                        Spacer()
                    }
                }
                .padding()
                .navigationTitle(mealTitle)
            }
        }
        .onAppear {
            mealDetailViewModel.fetchMealDetails(for: meal)
        }
        .onDisappear {
            mealDetailViewModel.selectedMealDetail = nil
            mealDetailViewModel.isDataFetched = false
        }
    }
}
