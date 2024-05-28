//
//  HomeView.swift
//  Aspn
//
//  Created by Tahir Mac aala on 23/05/2024.
//

import SwiftUI

struct HomeView<T: HomeViewModel>: View {
    @ObservedObject var viewModel: T

    var body: some View {
        ZStack {
            ScrollView {
                VStack (alignment: .leading){
                    Spacer().frame(height: 20)
                    HeaderView()
                    SearchField(textEntered: "")
                        .background(Color("Sky")) //F3F8FE
                        .cornerRadius(24)
                        .padding(.top,20)
                    ChoiceList()
                        .padding(.top,20)
                    VStack{
                        PopularHeader(action: {
                            print("See All")
                        })
                        HStack{
                            PopularImage()
                            Spacer().frame(width: 20)
                            PopularImage()
                        }
                        .padding(.top,-20)
                    }
                    .frame(width: 335,height: 274)
                    .padding(.top,20)

                    
                    
                }
                .padding()
            .navigationBarHidden(true)
            }
            CustomTabBar()
                
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = HomeViewModelImpl()
        HomeView(viewModel: viewModel)
    }
}
