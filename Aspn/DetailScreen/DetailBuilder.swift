//
//  DetailBuilder.swift
//  Aspn
//
//  Created by Tahir Mac aala on 24/05/2024.
//

import Foundation
import SwiftUI


class DetailBuilder {
    func build() -> some View {
        let viewModel = DetailViewModelImpl()
        let detailView = DetailView(viewModel: viewModel)
        return detailView
        
    }
}
