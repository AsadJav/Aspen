//
//  SearchField.swift
//  Aspn
//
//  Created by Tahir Mac aala on 24/05/2024.
//

import SwiftUI

struct SearchField: View {
    @State var textEntered: String = ""
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Find Things to do", text: $textEntered)
            }
            .padding()
        }
//        Spacer()
    }
}

#Preview {
    SearchField()
}
