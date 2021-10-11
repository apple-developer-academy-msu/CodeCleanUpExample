//
//  CleanedUpView.swift
//  CodeCleanUpExample
//
//  Created by Tom Phillips on 10/11/21.
//

import SwiftUI

struct CleanedUpGroceryView: View {
    let groceryListItems = ["Pizza Crust", "Rotten Apples", "Spoiled Milk", "Gummy Rats", "Raw Meat Smoothie", "Schweaty Meatballs", "Shrimp", "Mayonaise Milkshake", "Chocolate"]
    let imageName = "Oscarthegrouchy"
    let navigationTitle = "Oscar's \"Gross\"eries"
    
    var body: some View {
        NavigationView {
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                List(groceryListItems, id: \.self) { groceryListItem in
                    GroceryListItemView(listItemText: groceryListItem)
                }
            }
            .navigationBarTitle(navigationTitle)
        }
    }
    
    init() {
        UINavigationBar.appearance().backgroundColor = .orange
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UITableView.appearance().backgroundColor = .orange
    }
}

struct CleanedUpView_Previews: PreviewProvider {
    static var previews: some View {
        CleanedUpGroceryView()
    }
}
