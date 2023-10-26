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
                        //.frame(maxHeight: 200)
                        .frame(maxWidth: geometry.size.width)
                        .cornerRadius(20)
                        if mealDetailViewModel.isDataFetched {
                            Text("Ingredients:")
                                .font(.title2)
                                .fontWeight(.bold)
                            VStack {
                                if let ingredient = mealDetail.strIngredient1, !ingredient.isEmpty,
                                   let measure = mealDetail.strMeasure1, !measure.isEmpty {
                                    HStack {
                                        Text("- \(ingredient)")
                                        Spacer()
                                        Text(measure).fontWeight(.medium)
                                    }
                                }
                                
                                if let ingredient = mealDetail.strIngredient2, !ingredient.isEmpty,
                                   let measure = mealDetail.strMeasure2, !measure.isEmpty {
                                    HStack {
                                        Text("- \(ingredient)")
                                        Spacer()
                                        Text(measure).fontWeight(.medium)
                                    }
                                }
                                
                                if let ingredient = mealDetail.strIngredient3, !ingredient.isEmpty,
                                   let measure = mealDetail.strMeasure3, !measure.isEmpty {
                                    HStack {
                                        Text("- \(ingredient)")
                                        Spacer()
                                        Text(measure).fontWeight(.medium)
                                    }
                                }
                                
                                if let ingredient = mealDetail.strIngredient4, !ingredient.isEmpty,
                                   let measure = mealDetail.strMeasure4, !measure.isEmpty {
                                    HStack {
                                        Text("- \(ingredient)")
                                        Spacer()
                                        Text(measure).fontWeight(.medium)
                                    }
                                }
                                
                                if let ingredient = mealDetail.strIngredient5, !ingredient.isEmpty,
                                   let measure = mealDetail.strMeasure5, !measure.isEmpty {
                                    HStack {
                                        Text("- \(ingredient)")
                                        Spacer()
                                        Text(measure).fontWeight(.medium)
                                    }
                                }
                                
                                if let ingredient = mealDetail.strIngredient6, !ingredient.isEmpty,
                                   let measure = mealDetail.strMeasure6, !measure.isEmpty {
                                    HStack {
                                        Text("- \(ingredient)")
                                        Spacer()
                                        Text(measure).fontWeight(.medium)
                                    }
                                }
                                
                                if let ingredient = mealDetail.strIngredient7, !ingredient.isEmpty,
                                   let measure = mealDetail.strMeasure7, !measure.isEmpty {
                                    HStack {
                                        Text("- \(ingredient)")
                                        Spacer()
                                        Text(measure).fontWeight(.medium)
                                    }
                                }
                                
                                if let ingredient = mealDetail.strIngredient8, !ingredient.isEmpty,
                                   let measure = mealDetail.strMeasure8, !measure.isEmpty {
                                    HStack {
                                        Text("- \(ingredient)")
                                        Spacer()
                                        Text(measure).fontWeight(.medium)
                                    }
                                }
                                
                                if let ingredient = mealDetail.strIngredient9, !ingredient.isEmpty,
                                   let measure = mealDetail.strMeasure9, !measure.isEmpty {
                                    HStack {
                                        Text("- \(ingredient)")
                                        Spacer()
                                        Text(measure).fontWeight(.medium)
                                    }
                                }
                                
                                if let ingredient = mealDetail.strIngredient10, !ingredient.isEmpty,
                                   let measure = mealDetail.strMeasure10, !measure.isEmpty {
                                    HStack {
                                        Text("- \(ingredient)")
                                        Spacer()
                                        Text(measure).fontWeight(.medium)
                                    }
                                }
                                
                                if let ingredient = mealDetail.strIngredient11, !ingredient.isEmpty,
                                   let measure = mealDetail.strMeasure11, !measure.isEmpty {
                                    HStack {
                                        Text("- \(ingredient)")
                                        Spacer()
                                        Text(measure).fontWeight(.medium)
                                    }
                                }
                                
                                if let ingredient = mealDetail.strIngredient12, !ingredient.isEmpty,
                                   let measure = mealDetail.strMeasure12, !measure.isEmpty {
                                    HStack {
                                        Text("- \(ingredient)")
                                        Spacer()
                                        Text(measure).fontWeight(.medium)
                                    }
                                }
                                
                                if let ingredient = mealDetail.strIngredient13, !ingredient.isEmpty,
                                   let measure = mealDetail.strMeasure13, !measure.isEmpty {
                                    HStack {
                                        Text("- \(ingredient)")
                                        Spacer()
                                        Text(measure).fontWeight(.medium)
                                    }
                                }
                                
                                if let ingredient = mealDetail.strIngredient14, !ingredient.isEmpty,
                                   let measure = mealDetail.strMeasure14, !measure.isEmpty {
                                    HStack {
                                        Text("- \(ingredient)")
                                        Spacer()
                                        Text(measure).fontWeight(.medium)
                                    }
                                }
                                
                                if let ingredient = mealDetail.strIngredient15, !ingredient.isEmpty,
                                   let measure = mealDetail.strMeasure15, !measure.isEmpty {
                                    HStack {
                                        Text("- \(ingredient)")
                                        Spacer()
                                        Text(measure).fontWeight(.medium)
                                    }
                                }
                                
                                if let ingredient = mealDetail.strIngredient16, !ingredient.isEmpty,
                                   let measure = mealDetail.strMeasure16, !measure.isEmpty {
                                    HStack {
                                        Text("- \(ingredient)")
                                        Spacer()
                                        Text(measure).fontWeight(.medium)
                                    }
                                }
                                
                                if let ingredient = mealDetail.strIngredient17, !ingredient.isEmpty,
                                   let measure = mealDetail.strMeasure17, !measure.isEmpty {
                                    HStack {
                                        Text("- \(ingredient)")
                                        Spacer()
                                        Text(measure).fontWeight(.medium)
                                    }
                                }
                                
                                if let ingredient = mealDetail.strIngredient18, !ingredient.isEmpty,
                                   let measure = mealDetail.strMeasure18, !measure.isEmpty {
                                    HStack {
                                        Text("- \(ingredient)")
                                        Spacer()
                                        Text(measure).fontWeight(.medium)
                                    }
                                }
                                
                                if let ingredient = mealDetail.strIngredient19, !ingredient.isEmpty,
                                   let measure = mealDetail.strMeasure19, !measure.isEmpty {
                                    HStack {
                                        Text("- \(ingredient)")
                                        Spacer()
                                        Text(measure).fontWeight(.medium)
                                    }
                                }
                                
                                if let ingredient = mealDetail.strIngredient20, !ingredient.isEmpty,
                                   let measure = mealDetail.strMeasure20, !measure.isEmpty {
                                    HStack {
                                        Text("- \(ingredient)")
                                        Spacer()
                                        Text(measure).fontWeight(.medium)
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
