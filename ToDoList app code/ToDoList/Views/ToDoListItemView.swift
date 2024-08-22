//
//  ToDoListItemView.swift
//  ToDoList
//
//  Created by Dimitri Nelson on 8/18/24.
//

import SwiftUI

struct ToDoListItemView: View {
    @StateObject var viewModel = ToDoListItemViewViewModel()
    let item: ToDoListItem
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .bold()
                    .font(.body)
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(.accentColor)
            }
            
            Spacer()
            
            Button {
               //
                viewModel.toggleIsDone(item: item)
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(.blue)
            }
        }
    }
}

#Preview {
    ToDoListItemView(item: .init(
        id: "XYZ",
                                 title: "Testing on how it looks",
                                 dueDate: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: false))
}
