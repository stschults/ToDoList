//
//  RegisterView.swift
//  ToDoList
//
//  Created by Станислав Шульц on 22.05.2023.
//

import SwiftUI

struct RegisterView: View {
    
    @State var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register",
                       subtitle: "Start organizing todos",
                       angle: -15,
                       backgroundColor: .orange)
            //Registration form
            Form {
                TextField("Full name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TDLButton(
                    title: "Create Account",
                    backgroundColor: .green
                ) {
                    // Attempt to register
                    viewModel.register()
                }
            }
            .offset(y: -50)
            
            
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
