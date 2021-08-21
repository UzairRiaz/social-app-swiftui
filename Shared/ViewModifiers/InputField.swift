//
//  InputField.swift
//  Social_app_swift (iOS)
//
//  Created by Umair Riaz on 15/08/2021.
//

import SwiftUI

struct textFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 320, height: 45)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}
