//
//  PopularHeader.swift
//  Aspn
//
//  Created by Tahir Mac aala on 24/05/2024.
//

import SwiftUI

struct PopularHeader: View {
    let action: () -> Void
    var body: some View {
        HStack {
            Text("Popular")
                .font(.largeTitle)
                .bold()
            Spacer()
            Button(action: action, label: {
                Text("See all")
                    .bold()
            })
        }
    }
}

#Preview {
    PopularHeader(action: {})
}
