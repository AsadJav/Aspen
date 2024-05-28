//
//  DetailView.swift
//  Aspn
//
//  Created by Tahir Mac aala on 24/05/2024.
//

import SwiftUI

struct DetailView<T: DetailViewModel>: View {
    @ObservedObject var viewModel: T
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = DetailViewModelImpl()
        DetailView(viewModel: viewModel)
    }
}
