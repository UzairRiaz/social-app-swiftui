//
//  LogIn.swift
//  Social_app_swift (iOS)
//
//  Created by Umair Riaz on 15/08/2021.
//

import SwiftUI

struct LogIn: View {
    
    @State var username: String = ""
    @State var password: String = ""

    var body: some View {
        VStack(alignment: .center, spacing: 15) {
            Text("Log In")
                .font(.system(.largeTitle, design: .monospaced))
                .fontWeight(.bold)
                .padding(100)
            TextField("username", text: $username)
            TextField("password", text: $password)
            LoginSigninButton(label: "Log in")
                .onTapGesture {
                    
                }
            
        }
    }
}

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}
