//
//  GroceryListItemView.swift
//  CodeCleanUpExample
//
//  Created by Tom Phillips on 10/11/21.
//

import SwiftUI

struct GroceryListItemView: View {
    @State private var isSelected = false
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
    
    var imageName: String {
        isSelected ? "checkmark.square" : "square"
    }
}

struct GroceryListItemView_Previews: PreviewProvider {
    static var previews: some View {
        GroceryListItemView(listItemText: "Milk")
    }
}
