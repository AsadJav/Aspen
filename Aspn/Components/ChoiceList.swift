//
//  ChoiceList.swift
//  Aspn
//
//  Created by Tahir Mac aala on 24/05/2024.
//

import SwiftUI

struct ChoiceList: View {
    @State private var selectedItem: Int? = 0
    var arr = ["Locations","Hotels","Food", "Adventure", "Actions"]
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
             HStack {
                 Spacer().frame(height: 10)
                 ForEach(arr.indices,id: \.self){ choice in
                     Text(arr[choice])
                         .padding()
                         .fontWeight(.bold)
                         .font(.custom("CircularXX", size: 18))
                         .background(selectedItem == choice ? Color("Sky") : Color.clear)
                         .foregroundColor(selectedItem == choice ? Color.blue : Color.gray)
                        .cornerRadius(33)
                        //.padding(.leading,10)
                        .onTapGesture {
                            selectedItem = choice
                        }
                 }
             }
        }
    }
}

#Preview {
    ChoiceList()
}
