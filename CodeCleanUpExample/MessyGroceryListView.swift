//
//  ContentView.swift
//  CodeCleanUpExample
//
//  Created by Tom Phillips on 10/11/21.
//

import SwiftUI

struct MessyGroceryListView: View {
    @State private var HasPurchasedPizzaCrust = false
    @State private var HAS_PURCHASED_ROTTEN_APPLES = false
    @State private var haspurchasedspoiledmilk = false
    @State private var has_purchased_gummy_rats = false
    @State private var boolHasPurchasedRawMeatSmoothie = false
    @State private var hasPurchasedSweatyMeatballs = false
    @State private var hasPurchasedShrimp = false
    @State private var hasPurchasedMayonaiseMilkshake = false
    @State private var hasPurchasedChocolate = false
    
    var body: some View {
        NavigationStack {
        VStack {
        Image("Oscarthegrouchy").resizable().scaledToFill()
        List {
        HStack {
        Button(action: {
            HasPurchasedPizzaCrust.toggle()
        }, label: {
            HStack {
                if HasPurchasedPizzaCrust {
                    Image(systemName: "checkmark.square")
                } else {
                    Image(systemName: "square")
                }
                Text("Pizza Crust")
            }
            .font(.body)
        })
        }
        .listRowBackground(Color.green)
        .foregroundColor(.white)

        HStack {
            Button(action: {
                HAS_PURCHASED_ROTTEN_APPLES.toggle()
            }, label: {
            HStack {
                if HAS_PURCHASED_ROTTEN_APPLES {
                    Image(systemName: "checkmark.square")
                } else {
                    Image(systemName: "square")
                }
                Text("Rotten Apples")
            }
            .font(.body)
            })
        }
        .listRowBackground(Color.green)
        .foregroundColor(.white)
        
        HStack {
            Button(action: {
                haspurchasedspoiledmilk.toggle()
            }, label: {
                HStack {
                    if haspurchasedspoiledmilk {
                        Image(systemName: "checkmark.square")
                    } else {
                        Image(systemName: "square")
                    }
                    Text("Spoiled Milk")
                }
                .font(.body)
            })
        }
        .listRowBackground(Color.green)
        .foregroundColor(.white)
        
        HStack {
            Button(action: {
                has_purchased_gummy_rats.toggle()
            }, label: {
                HStack {
                    if has_purchased_gummy_rats {
                        Image(systemName: "checkmark.square")
                    } else {
                        Image(systemName: "square")
                    }
                    Text("Gummy Rats")
                }
                .font(.body)
            })
        }
        .listRowBackground(Color.green)
        .foregroundColor(.white)
        
        HStack {
            Button(action: {
                boolHasPurchasedRawMeatSmoothie.toggle()
            }, label: {
                HStack {
                    if boolHasPurchasedRawMeatSmoothie {
                        Image(systemName: "checkmark.square")
                    } else {
                        Image(systemName: "square")
                    }
                    Text("Raw Meat Smoothie")
                }
                .font(.body)
            })
        }
        .listRowBackground(Color.green)
        .foregroundColor(.white)
        
        HStack {
            Button(action: {
                hasPurchasedSweatyMeatballs.toggle()
            }, label: {
                HStack {
                    if hasPurchasedSweatyMeatballs {
                        Image(systemName: "checkmark.square")
                    } else {
                        Image(systemName: "square")
                    }
                    Text("Schweaty Meatballs")
                }
                .font(.body)
            })
        }
        .listRowBackground(Color.green)
        .foregroundColor(.white)
        
        HStack {
            Button(action: {
                hasPurchasedShrimp.toggle()
            }, label: {
                HStack {
                    if hasPurchasedShrimp {
                        Image(systemName: "checkmark.square")
                    } else {
                        Image(systemName: "square")
                    }
                    Text("Shrimp")
                }
                .font(.body)
            })
        }
        .listRowBackground(Color.green)
        .foregroundColor(.white)
        
        HStack {
            Button(action: {
                hasPurchasedMayonaiseMilkshake.toggle()
            }, label: {
                HStack {
                    if hasPurchasedMayonaiseMilkshake {
                        Image(systemName: "checkmark.square")
                    } else {
                        Image(systemName: "square")
                    }
                    Text("Mayonaise Milkshake")
                }
                .font(.body)
            })
        }
        .listRowBackground(Color.green)
        .foregroundColor(.white)
        
        HStack {
            Button(action: {
                hasPurchasedChocolate.toggle()
            }, label: {
                HStack {
                    if hasPurchasedChocolate {
                        Image(systemName: "checkmark.square")
                    } else {
                        Image(systemName: "square")
                    }
                    Text("Chocolate")
                }
                .font(.body)
            })
        }
        .listRowBackground(Color.green)
        .foregroundColor(.white)
        }
    }
    .navigationBarTitle("Oscar's \"Gross\"eries")
    }
    }
    
    init() {
        UINavigationBar.appearance().backgroundColor = .orange
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UITableView.appearance().backgroundColor = .orange
    }
}

#Preview {
    MessyGroceryListView()
}
