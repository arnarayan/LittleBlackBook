//
//  ContentView.swift
//  LittleBlackBook
//
//  Created by Anand Narayan on 2023-02-12.
//

import SwiftUI

struct ContentView: View {
    
    @State var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection){
                    // First Tab
                        ListItems()
                        .tabItem {
                            VStack {
                                Image(systemName: "book.fill")
                                Text("Book")
                            }
                        }
                        .tag(0)
                    
                    // Second Tab
                    Image(systemName: "list.bullet")
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                        .padding()
                        .tabItem {
                            VStack {
                                Image(systemName: "list.bullet")
                                Text("Habits")
                            }
                        }
                        .tag(1)
                    
                    // Third Tab
                    Image(systemName: "house")
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                        .padding()
                        .tabItem {
                            VStack {
                                Image(systemName: "house")
                                Text("My Home")
                            }
                        }
                        .tag(2)
                    
                    // Fourth Tab
                    Image(systemName: "person.2")
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                        .padding()
                        .tabItem {
                            VStack {
                                Image(systemName: "person.2")
                                Text("People")
                            }
                        }
                        .tag(3)
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
