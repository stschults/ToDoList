//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Станислав Шульц on 22.05.2023.
//

import Foundation
import FirebaseFirestore

//ViewModel for list of items view
//Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    
    private let userID: String
    init(userID: String) {
        self.userID = userID
    }
    
    func delete(id: String) {
        let db = Firestore.firestore()
        db.collection("users")
            .document(userID)
            .collection("todos")
            .document(id)
            .delete()
    }
}
