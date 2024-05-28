//
//  FrontViewModel.swift
//  Aspn
//
//  Created by Tahir Mac aala on 23/05/2024.
//

import Foundation


protocol FrontViewModel: ObservableObject {
    func start()
    var isHomeActive: Bool {get set}
}

class FrontViewModelImpl: FrontViewModel {
    @Published var isHomeActive: Bool = false
    
    init() {
        
    }
    func start() {
        isHomeActive = true
    }
    
    
}
