//
//  PopularImage.swift
//  Aspn
//
//  Created by Tahir Mac aala on 24/05/2024.
//

import SwiftUI

struct PopularImage: View {
    var body: some View {
        ZStack {
            HStack {
                VStack(alignment:.leading, spacing: 6){
                    Spacer()
                    Text("  Alley Palace  ")
                        .foregroundStyle(.white)
                        .background(Color(.darkGray))
                        .cornerRadius(59)
                        .font(.custom("CircularXX", size: 12))                    
                    Text(" \(Image(systemName: "star.fill"))  4.5 ")
                        .foregroundStyle(.white)
                        .background(Color(.darkGray))
                        .cornerRadius(59)
                        .font(.custom("CircularXX", size: 12))
                        
                }
                .padding([.leading, .bottom], 12)
                .frame(alignment: .leading)
                Spacer()
            }
            .frame(width: 160,height: 220)
            .cornerRadius(24)
            .background{
                Image("Alley Palace")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(24)
                    .frame(width: 160,height: 220)
            }
        }
    }
}

#Preview {
    PopularImage()
}
