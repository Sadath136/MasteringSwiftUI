//
//  TabViewComponent.swift
//  MasterSwiftUI
//
//  Created by Sadath S on 21/11/25.
//

import SwiftUI

struct TabViewComponent: View {
    
    var halfScreenWidth: CGFloat {
        UIScreen.main.bounds.width / 2.0
    }
    
    @State var selectedTabIndex: Int = 0
    @State var isCollapsed: Bool = false
    
    var body: some View {
        ZStack {
            List {
                ForEach(0..<10) { index in
                    Text("\(index)")
                }
            }
            .listRowSeparator(.hidden)
            .listStyle(.plain)
            
            
            TabView(selection: $selectedTabIndex) {
                HomeView(selectedTabIndex: $selectedTabIndex)
                    .tag(0)
                    .tabItem {
                        Text("Home")
                        Image(systemName: "heart")
                    }
                ProfileView()
                    .tag(1)
                    .tabItem {
                        Text("Profile")
                        Image(systemName: "star")
                    }
                AccountsView()
                    .tag(2)
                    .tabItem {
                        Text("Accounts")
                        Image(systemName: "bolt")
                    }
                SettingsView()
                    .tag(3)
                    .tabItem {
                        Text("Settings")
                        Image(systemName: "globe")
                    }
            }
            .tint(Color.orange)
            
            .scaleEffect(x: isCollapsed ? 0.75 : 1.0 , y: isCollapsed ? 0.75 : 1.0)
              //.tabViewStyle(.page)
            
            .offset(x: isCollapsed ? 90.0 : 0.0, y: isCollapsed ? 90.0 : 0.0)
            .animation(Animation.smooth(duration: 0.3), value: isCollapsed)
            
            VStack() {
                HStack {
                    Button {
                        isCollapsed.toggle()
                    } label: {
                        Image(systemName: "paperplane")
                    }
                    Spacer()
                }
                .padding(7)
                Spacer()
            }
        }
    }
}

struct HomeView: View {
    
    @Binding var selectedTabIndex: Int
    
    var body: some View {
        ZStack {
            Color.yellow
            VStack {
                Text("This is Home View")
                Button("Go To Profile") {
                    selectedTabIndex = 3
                }
                .foregroundStyle(Color.white)
                .padding()
                .background(Color.orange.clipShape(RoundedRectangle(cornerRadius: 15.0)))
            }
        }
    }
}

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color.orange
            Text("This is Profile View")
        }
    }
}

struct AccountsView: View {
    var body: some View {
        ZStack {
            Color.red
            Text("This is Accounts View")
        }
    }
}

struct SettingsView: View {
    var body: some View {
        ZStack {
            Color.blue
            Text("This is Settings View")
        }
    }
}

#Preview {
    TabViewComponent()
}
