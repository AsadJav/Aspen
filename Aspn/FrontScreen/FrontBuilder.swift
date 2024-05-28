//
//  FrontBuilder.swift
//  Aspn
//
//  Created by Tahir Mac aala on 23/05/2024.
//

import Foundation
import SwiftUI

class FrontBuilder {
    func build() -> some View{
        let viewModel = FrontViewModelImpl()
        let frontView = FrontView(viewModel: viewModel)
        return frontView
        
    }
}
