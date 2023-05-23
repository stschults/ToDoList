//
//  ButtonView.swift
//  ToDoList
//
//  Created by Станислав Шульц on 23.05.2023.
//

import SwiftUI

struct TDLButton: View {
    
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        .padding()
    }
}

struct TDLButton_Previews: PreviewProvider {
    static var previews: some View {
        TDLButton(title: "Value",
                   backgroundColor: .pink) {
            //Action
        }
    }
}
