//
//  UserScreen.swift
//  Social_app_swift (iOS)
//
//  Created by Umair Riaz on 15/08/2021.
//

import SwiftUI

struct UserScreen: View {
    var body: some View {
        TabView{
            NewsFeed()
                .tabItem {
                    Image(systemName: "house.fill")
                }
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Text("Notifications")
                .tabItem {
                    Image(systemName: "bell.fill")
                }
            Text("Messages")
                .tabItem {
                    Image(systemName: "message.fill")
                }
        }
        .accentColor(.black)
    }
}

struct UserScreen_Previews: PreviewProvider {
    static var previews: some View {
        UserScreen()
    }
}
