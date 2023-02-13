//
//  listitems.swift
//  LittleBlackBook
//
//  Created by Anand Narayan on 2023-02-12.
//

import SwiftUI

struct ListItems: View {
    @State var items: [String] = ["Item 1", "Item 2", "Item 3"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach($items, id: \.self) { item in
                    NavigationLink {
                        EditItem(item: item)
                    } label: {
                        Text(item.wrappedValue)
                    }

                    
                }
                .onMove { indices, newOffset in
                    self.items.move(fromOffsets: indices, toOffset: newOffset)
                }
                .onDelete { indices in
                    self.items.remove(atOffsets: indices)
                }
            }
            .navigationBarTitle("Editable List")
            .navigationBarItems(leading: EditButton(), trailing: Button(action: {
                self.items.append("Item \(self.items.count + 1)")
            }) {
                Image(systemName: "plus")
            })
        }
    }
}

struct listitems_Previews: PreviewProvider {
    static var previews: some View {
        ListItems()
    }
}
