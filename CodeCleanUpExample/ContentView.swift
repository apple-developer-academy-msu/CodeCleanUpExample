//
//  ContentView.swift
//  CodeCleanUpExample
//
//  Created by Tom Phillips on 10/11/21.
//

import SwiftUI

struct ContentView: View {
    @State private var hasPurchasedPizzaCrust = false
    @State private var hasPurchasedRottenApples = false
    @State private var hasPurchasedSpoiledMilk = false
    @State private var hasPurchasedGummyRats = false
    @State private var hasPurchasedRawMeatSmoothie = false
    @State private var hasPurchasedSweatyMeatballs = false
    @State private var hasPurchasedShrimp = false
    @State private var hasPurchasedMayonaiseMilkshake = false
    @State private var hasPurchasedChocolate = false
    
    var body: some View {
        NavigationView {
            VStack {
                Image("Oscarthegrouchy")
                    .resizable()
                    .scaledToFill()
                List {
                    HStack {
                        Button(action: {
                             hasPurchasedPizzaCrust.toggle()
                        }, label: {
                            HStack {
                                if hasPurchasedPizzaCrust {
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
                            hasPurchasedRottenApples.toggle()
                        }, label: {
                            HStack {
                                if hasPurchasedRottenApples {
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
                            hasPurchasedSpoiledMilk.toggle()
                        }, label: {
                            HStack {
                                if hasPurchasedSpoiledMilk {
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
                            hasPurchasedGummyRats.toggle()
                        }, label: {
                            HStack {
                                if hasPurchasedGummyRats {
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
                            hasPurchasedRawMeatSmoothie.toggle()
                        }, label: {
                            HStack {
                                if hasPurchasedRawMeatSmoothie {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
    }
}
