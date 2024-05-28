//
//  RecomendedImage.swift
//  Aspn
//
//  Created by Tahir Mac aala on 24/05/2024.
//

import SwiftUI

struct RecomendedImage: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
                    ZStack(alignment: .bottomTrailing) {
                        Image("Explore Aspen")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 174,height: 142)
                            .clipped()
                            .cornerRadius(16)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.white, lineWidth: 1)
                            )

                        Text("4N/5D")
                            .padding(8)
                            .background(Color.black.opacity(0.7))
                            .foregroundColor(.white)
                            .font(.caption)
                            .cornerRadius(10)
                            .padding([.trailing], 10)
                    }
            Text("Explore Aspen")
                            .font(.headline)
                            .padding([.leading, .trailing, .bottom], 10)
                    }
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 5)
                    .padding()
    }
}

#Preview {
    RecomendedImage()
}
