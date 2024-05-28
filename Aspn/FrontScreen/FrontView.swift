//
//  ContentView.swift
//  Aspn
//
//  Created by Tahir Mac aala on 23/05/2024.
//

import SwiftUI

struct FrontView<T: FrontViewModel>: View {
    @ObservedObject var viewModel: T
    @State var buttonTitle = "Explore"
    var body: some View {
        NavigationView {
            ZStack {
                    VStack {
                        Spacer().frame(height: 93)
                        HStack {
                            Text("Aspen")
                                .foregroundStyle(.white)
                                .frame(width: 263, height: 126)
                                .font(Font.custom("Hiatus", size: 70))
                        }
                        Spacer()
                        HStack{
                            VStack(alignment: .leading){
                                Text("Plan your")
                                    .foregroundStyle(.white)
                                    .font(.custom("Montserrat", size: 24))
                                Text("Luxurious")
                                    .foregroundStyle(.white)
                                    .font(.custom("Montserrat", size: 36))
                                Text("Vacation")
                                    .foregroundStyle(.white)
                                    .font(.custom("Montserrat", size: 36))
                            }
                            
                        }
                        .frame(width: 300,height: 135,alignment: .leading)
                        NavigationLink(destination: HomeBuilder().build(), isActive: $viewModel.isHomeActive){}.hidden()
                        AspnButton {
                            viewModel.start()
                        } label: {
                            Text("Explore")
                        }

                    }
                }
                .background {
                    Image("Front")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        .ignoresSafeArea()
            }
        }
        }
}

struct FrontView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = FrontViewModelImpl()
        FrontView(viewModel: viewModel)
    }
}

