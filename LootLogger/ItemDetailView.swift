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
            TextField("plaecholder",
                      text: $value) // dollar sign means the bindable value
        }
    }
}

struct ItemDetailView: View {
    var body: some View {
        VStack {
            FormField(title: "Name:",
                      placeholder: "",
                      value: .constant("Item Name"))
        }
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView()
    }
}
