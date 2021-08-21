//
//  Button.swift
//  Social_app_swift (iOS)
//
//  Created by Umair Riaz on 15/08/2021.
//

import SwiftUI

struct LoginSigninButton: View {
    var label: String
    var body: some View {
        Text(label)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .padding()
            .padding(.horizontal, 28)
            .foregroundColor(.white)
            .background(Color.orange)
            .clipShape(Capsule())
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        LoginSigninButton(label: "PlaceHolder")
            .previewLayout(.sizeThatFits)
    }
}
