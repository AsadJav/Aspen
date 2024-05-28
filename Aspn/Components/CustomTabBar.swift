//
//  CustomTabBar.swift
//  Aspn
//
//  Created by Tahir Mac aala on 24/05/2024.
//

import SwiftUI

struct CustomTabBar: View {
    @State private var selectedTab = 0
    var body: some View {
        NavigationView {
            VStack {
                switch selectedTab {
                                case 0:
                                    HomeBuilder().build()
                                case 1:
                                    DetailBuilder().build()
                                case 2:
                                    Text("Favorites Screen")
                                case 3:
                                    Text("Profile Screen")
                                default:
                                    EmptyView()
                                }
                        Spacer()
                        
                        // Custom Tab Bar
                        HStack {
                            Spacer()
                            
                            TabBarItem(imageName: "house.fill", selectedTab: $selectedTab, tabIndex: 0)
                            Spacer()
                            TabBarItem(imageName: "ticket", selectedTab: $selectedTab, tabIndex: 1)
                            Spacer()
                            TabBarItem(imageName: "heart", selectedTab: $selectedTab, tabIndex: 2)
                            Spacer()
                            TabBarItem(imageName: "person", selectedTab: $selectedTab, tabIndex: 3)
                            
                            Spacer()
                        }
                        .frame(height: 72)
                        .background(Color.white)
                        .cornerRadius(32)
                        .shadow(radius: 10)
                        .padding()
            }
        }
    }
}
struct TabBarItem: View {
    var imageName: String
    @Binding var selectedTab: Int
    var tabIndex: Int
    
    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 24, height: 24)
            .foregroundColor(selectedTab == tabIndex ? .blue : .gray)
            .onTapGesture {
                selectedTab = tabIndex
            }
    }
}

#Preview {
    CustomTabBar()
}
