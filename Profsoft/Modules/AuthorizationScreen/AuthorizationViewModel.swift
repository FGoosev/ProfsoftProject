//
//  AuthorizationViewModel.swift
//  Profsoft
//
//  Created by Alexandr Gusev on 21.07.2022.
//

import Foundation
import Combine

final class AuthorizationViewModel: ObservableObject{
    let input: Input
    @Published var output: Output
    private var cancellable = Set<AnyCancellable>()
    
    init() {
        self.input = Input()
        self.output = Output()
        
        setUpBindings()
    }
    
    
}

private extension AuthorizationViewModel {
    func setUpBindings(){
        bindEnterButton()
    }
    func bindEnterButton(){
        input.enterButtonTap
            .sink{ [weak self] in
                self?.output.title = "Вход в ВК через email"
            }
            .store(in: &cancellable)
    }
}

extension AuthorizationViewModel {
    struct Input {
        let enterButtonTap = PassthroughSubject<Void, Never>()
    }
    struct Output {
        var title: String = "Вход в VK по ID"
    }
}
