//
//  HeaderView.swift
//  Aspn
//
//  Created by Tahir Mac aala on 24/05/2024.
//

import SwiftUI

struct HeaderView: View {
    @State private var selection = "Aspen, USA"
    var arr = ["Aspen, USA","Aspen, USA","Aspen, USA","Aspen, USA"]
    var body: some View {
        HStack(alignment:.top){
            VStack(alignment: .leading){
                Text("Explore")
                    .font(.custom("Montserrat", size: 14))
                Text("Aspen")
                    .font(.custom("Montserrat", size: 32))
            }
            .frame(width: 103,height: 56)
            Spacer()
            HStack{
                Image(systemName: "location.fill")
                    .foregroundColor(.blue)
                Text("Aspen, USA")
                    .font(.custom("CircularXX", size: 12))
                Image(systemName: "chevron.down")
                    .foregroundColor(.blue)
            }
            .frame(width: 128,height: 16,alignment: .leading)
                
        }
        .frame(width: 335,height: 56)
    }
}

#Preview {
    HeaderView()
}
