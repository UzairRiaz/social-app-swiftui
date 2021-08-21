//
//  PostCard.swift
//  Social_app_swift (iOS)
//
//  Created by Umair Riaz on 20/08/2021.
//

import SwiftUI

struct PostCard: View {
    @State var showOptions: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            HStack{
                Circle()
                    .foregroundColor(.red)
                    .frame(width: 52, height: 52, alignment: .center)
                VStack(alignment: .leading){
                    Text("Name")
                        .lineLimit(1)
                        .font(.system(size: 28, weight: .black, design: .serif))
                    Text("username")
                        .lineLimit(1)
                        .font(.system(size: 18))
                        .foregroundColor(.gray)
                }
                Spacer()
                Button(action: {showOptions = true}, label: {
                    Image(systemName: "chevron.down")
                        .font(.system(size: 28))
                        .foregroundColor(.gray)
                })
            }
            Text(
                """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
""")
                .multilineTextAlignment(.leading)
            HStack{
                Image(systemName: "heart")
                
                Spacer()
                Image(systemName: "repeat")
                Spacer()
                Image(systemName: "message")
                Spacer()
                Image(systemName: "bookmark")
                
            }
            .font(.system(size: 24))
            .foregroundColor(.gray)
            .padding()
            .padding(.horizontal)
            .padding(.vertical, 0)
        }
        .padding()
    }
}

struct PostCard_Previews: PreviewProvider {
    static var previews: some View {
        PostCard()
            .previewLayout(.sizeThatFits)
        
    }
}
