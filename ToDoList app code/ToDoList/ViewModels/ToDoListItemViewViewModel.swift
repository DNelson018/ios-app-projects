//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Dimitri Nelson on 8/18/24.
//

import FirebaseAuth
import Foundation
import FirebaseFirestore

class ToDoListItemViewViewModel: ObservableObject {
    
    init() {}
    
    func toggleIsDone(item : ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
    }
