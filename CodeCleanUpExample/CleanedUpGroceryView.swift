//
//  CleanedUpView.swift
//  CodeCleanUpExample
//
//  Created by Tom Phillips on 10/11/21.
//

import SwiftUI

struct CleanedUpGroceryView: View {
    // Storing the grocery items in an array allows us to loop through the same code instead of copy and pasting the same 10 lines over and over
    let groceryListItems = ["Pizza Crust", "Rotten Apples", "Spoiled Milk", "Gummy Rats", "Raw Meat Smoothie", "Schweaty Meatballs", "Shrimp", "Mayonaise Milkshake", "Chocolate"]
    
    // if you need to use a special character like quotations in a literal string, use a backslash. See 'Special Characters in String Literals' https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html
    let navigationTitle = "Oscar's \"Gross\"eries"
    
    var body: some View {
        NavigationStack {
            VStack {
                // Xcode 15 will automatially define a static constant that represents our asset name. This is preferred since there is no change of having a typo in the image name
                Image(.oscarthegrouchy)
                    .resizable()
                    .scaledToFill()
                
                // Since the grocery list items are stored in an array, we can plug the array into a List to iterate through them and plug each item into the GroceryListItemView
                List(groceryListItems, id: \.self) { groceryListItem in
                    GroceryListItemView(listItemText: groceryListItem)
                }
            }
            .navigationBarTitle(navigationTitle)
        }
    }
    
    
    // The init is a special function that is called whenever this View is created. This init is setting a couple UI colors.
    init() {
        UINavigationBar.appearance().backgroundColor = .orange
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UITableView.appearance().backgroundColor = .orange
    }
}

#Preview {
    CleanedUpGroceryView()
}
