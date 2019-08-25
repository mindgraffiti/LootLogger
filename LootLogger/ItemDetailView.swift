//
//  ItemDetailView.swift
//  LootLogger
//
//  Created by Thuy Copeland on 8/25/19.
//  Copyright © 2019 Big Nerd Ranch. All rights reserved.
//

import SwiftUI

struct FormField: View {
    let title: String
    let placeholder: String
    @Binding var value: String

    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(.gray)
            TextField("plaecholder",
                      text: $value) // dollar sign means the bindable value
                .multilineTextAlignment(.trailing)
        }
    }
}

struct ItemDetailView: View {
    var item: Item

    var body: some View {
        Form {
            Section(header: Text("Information")) {
                HStack{
                    Text("ID")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("\(item.id)")
                    .lineLimit(1)
                    .font(.subheadline)
                }
            }
            FormField(title: "Name:",
                      placeholder: "",
                      value: .constant(item.name))
            FormField(title: "Serial Number:",
                      placeholder: "",
                      value: .constant(item.serial))
            FormField(title: "Item Value:",
                      placeholder: "",
                      value: .constant("$\(item.itemValue)"))
        }.navigationBarTitle("Item Detail")
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(item: Item.random)
    }
}
