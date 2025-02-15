//
//  FormTextField.swift
//  SwiftUIBasics
//
//  Created by Diplomado on 09/12/23.
//

import SwiftUI

struct FormTextField: View {
    var name = ""
    @Binding var value: String
    var isSecure = false

    var body: some View {
        VStack {
            if isSecure {
                SecureField(name, text: $value)
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .padding(.horizontal)
            } else {
                TextField(name, text: $value)
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .padding(.horizontal)
            }
            Divider()
                .frame(height: 1)
                .background(Color.gray)
                .padding(.horizontal)
        }
    }
}

#Preview {
    VStack(spacing: 20) {
        FormTextField(name: "Email", value: .constant(""), isSecure: false)
        FormTextField(name: "Password", value: .constant(""), isSecure: true)
    }
}
