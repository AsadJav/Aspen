//
//  HomeBuilder.swift
//  Aspn
//
//  Created by Tahir Mac aala on 23/05/2024.
//

import Foundation
import SwiftUI


class HomeBuilder {
    func build() -> some View{
        let viewModel = HomeViewModelImpl()
        let homeView = HomeView(viewModel: viewModel)
        return homeView
    }
}
