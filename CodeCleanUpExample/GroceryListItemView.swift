//
//  GroceryListItemView.swift
//  CodeCleanUpExample
//
//  Created by Tom Phillips on 10/11/21.
//

import SwiftUI

// Breaking Views into small reusable pieces is crucial for keeping codebases clean
struct GroceryListItemView: View {
    // This value will store whether the checkbox has been selected for each individual instance of this View. See https://developer.apple.com/documentation/swiftui/state
    @State private var isSelected = false
    
    // Since this variable does not have a default value, Swift will force us to give a value for this when creating this View
    var listItemText: String
    
    var body: some View {
        HStack {
            Button(action: {
                isSelected.toggle()
            }, label: {
            HStack {
                Image(systemName: imageName)
                Text(listItemText)
            }
            .font(.body)
            })
        }
        .listRowBackground(Color.green)
        .foregroundColor(.white)
    }
    
    // This is an example of a 'Computed Property'. Rather than store a specific value, it runs code and returns the result. See Computed Properties https://docs.swift.org/swift-book/LanguageGuide/Properties.html
    var imageName: String {
        
        // This is an example of the Ternary Operator. The syntax looks very cryptic, but this is a handy shorthand that is the same as an if / else statement. See Ternary Conditional Operator https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html
        isSelected ? "checkmark.square" : "square"
    }
}

struct GroceryListItemView_Previews: PreviewProvider {
    static var previews: some View {
        GroceryListItemView(listItemText: "Milk")
    }
}
