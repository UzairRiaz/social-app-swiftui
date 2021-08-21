//
//  NewsFeed.swift
//  Social_app_swift (iOS)
//
//  Created by Umair Riaz on 20/08/2021.
//

import SwiftUI

struct NewsFeed: View {
    @EnvironmentObject var authentication: Authentication
    @State var showComments: Bool = false
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading, spacing: 8){
                    ForEach(1..<10){item in
                        PostCard()
                            .onTapGesture {
                                showComments = true
                            }
                        Divider()
                            .font(.largeTitle)
                            .foregroundColor(.black)
                    }
                }
            }
            
            .navigationBarItems(
                leading:Text("Newsfeed"),
                trailing: Text("Logout")
                    .onTapGesture (perform: {
                        authentication.logOut()
                    })
            )
            .sheet(isPresented: $showComments, content: {
                CommentSection()
            })
        }
    }
}

struct NewsFeed_Previews: PreviewProvider {
    static var previews: some View {
        NewsFeed()
    }
}
