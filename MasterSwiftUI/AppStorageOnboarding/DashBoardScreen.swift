//
//  DashBoardScreen.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 22/12/25.
//

import SwiftUI

struct DashBoardScreen: View {
    var body: some View {
        TabView {
            Dashboard()
                .tag(0)
                .tabItem {
                    Label("Dashboard", systemImage: "star.fill")
                }
            FoodView()
                .tag(1)
                .tabItem {
                    Label("Food", systemImage: "house.fill")
                }
            Instamart()
                .tag(2)
                .tabItem {
                    Label("Instamart", systemImage: "heart.fill")
            }
            Dineout()
                .tag(3)
                .tabItem {
                        Label("Dineout", systemImage: "cross.fill")
                }
        }
    }
}

struct FoodView: View {
    var body: some View {
        Text("Food")
    }
}

struct Instamart: View {
    var body: some View {
        Text("Instamart")
    }
}

struct Dineout: View {
    var body: some View {
        Text("Dineout")
    }
}

struct Dashboard: View {
    var appContainer: AppStorageContainer? = DataManager.shared.getData(UserDefaultKeys.appContainer)
    
    
    var body: some View {
        VStack {
            Text(appContainer?.firstName ?? "")
            Text(appContainer?.email ?? "")
            Text(appContainer?.secName ?? "")
            Text(appContainer?.number ?? "")
            Button("Logout") {
                DataManager.shared.logout()
            }
        }
    }
}





#Preview {
    DashBoardScreen()
}
