//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Dimitri Nelson on 8/18/24.
//

import FirebaseFirestore
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel: ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
   
    
    init(userId: String) {
       //path to todos
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos"
        )
        self._viewModel = StateObject(wrappedValue: ToDoListViewViewModel(userId: userId))
        
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    ToDoListItemView(item: item)
                        .swipeActions {
                            Button(action: {
                                // delete
                                viewModel.delete(id: item.id)
                            }, label: {
                               Label ("Delete",
                            systemImage: "trash")
                            }).tint(.red)
                        }
                }
                .listStyle(PlainListStyle())
            }.navigationTitle("To do list")
                .toolbar {
                    Button {
                        // Action
                        viewModel.showingNewItemView = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                .sheet(isPresented: $viewModel.showingNewItemView) {
                    NewItemView(newItemPresented: $viewModel.showingNewItemView)
                }
        }
    }
}

#Preview {
    ToDoListView(userId: "sample")
}
