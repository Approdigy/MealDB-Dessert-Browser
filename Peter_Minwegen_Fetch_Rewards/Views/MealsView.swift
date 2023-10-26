//
//  MealsView.swift
//  Peter_Minwegen_Fetch_Rewards
//
//  Created by peter minwegen on 10/25/23.
//

import Foundation
import SwiftUI

struct MealsView: View {
    @ObservedObject var mealsViewModel = MealsViewModel()
    @ObservedObject var mealDetailViewModel = MealDetailViewModel()
    
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "dog.fill")
                    .foregroundColor(AppColors.secondaryColor)
                    .imageScale(.large)
                Text("Fetch Recipes")
                    .font(.custom("Mitr-Regular", size: 25))
                    .foregroundColor(AppColors.secondaryColor)
            }
            NavigationView {
                List(mealsViewModel.meals) { meal in
                    NavigationLink(destination: MealDetailView(mealDetailViewModel: mealDetailViewModel, meal: meal, mealTitle: meal.strMeal)) {
                        VStack {
                            Text(meal.strMeal)
                                .font(.custom("Mitr-Regular", size: 17))
                        }
                    }
                    .cornerRadius(20)
                }
            }
            .overlay(
                Group {
                    if mealsViewModel.meals.isEmpty {
                        ProgressView()
                            .progressViewStyle(CircularProgressViewStyle(tint: AppColors.secondaryColor))
                            .scaleEffect(2.2)
                    }
                }
            )
            .accentColor(AppColors.secondaryColor)
        }
        .background(AppColors.primaryColor)
        .onAppear {
            mealsViewModel.fetchMeals()
        }
    }
}
