//
//  AspnButton.swift
//  Aspn
//
//  Created by Tahir Mac aala on 23/05/2024.
//

import SwiftUI

struct AspnButton<Label: View> : View {
    let action: () -> Void
    let label: () -> Label
    var body: some View {
        Button(action: action){
            label()
                .foregroundStyle(.white)
                .frame(width: 311,height: 52)
                .background(Color(.blue))
                .cornerRadius(16)
                .fontWeight(.bold)
                .font(.custom("CircularXX", size: 16))
        }
    }
}


struct AspnButton_Previews: PreviewProvider {
    static var previews: some View {
        AspnButton(action: {
            print("Button tapped!")
        }) {
            Text("Tap Me")
                .font(.headline)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
