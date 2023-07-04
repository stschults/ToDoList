//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Станислав Шульц on 22.05.2023.
//

import Foundation

//ViewModel for list of items view
//Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    init() {}
}
