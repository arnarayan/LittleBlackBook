//
//  EditItem.swift
//  LittleBlackBook
//
//  Created by Anand Narayan on 2023-02-12.
//

import SwiftUI

struct EditItem: View {
    @Binding var item: String
    
    var body: some View {
        VStack {
            TextField("Edit item", text: $item)
                .padding()
            Spacer()
        }
        .navigationBarTitle("Edit Item", displayMode: .inline)
    }
}


