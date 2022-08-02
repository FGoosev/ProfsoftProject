//
//  SettingsListViewModel.swift
//  Profsoft
//
//  Created by Alexandr Gusev on 01.08.2022.
//

import Foundation
import Combine

final class SettingsListViewModel: ObservableObject{
    let input: Input
    @Published var output: Output
    private var cancellable = Set<AnyCancellable>()
    
    init() {
        self.input = Input()
        self.output = Output()
        setUpBindings()
    }
}

private extension SettingsListViewModel{
    func setUpBindings(){
        bindEnterButton()
    }
    func bindEnterButton(){
        input.settingButtonTap
            .sink{ value in
                
            }
            .store(in: &cancellable)
    }
}


extension SettingsListViewModel{
    struct Input {
        let settingButtonTap = PassthroughSubject<Int, Never>()
    }
    struct Output {
        let settings: [Settings] = [
            .mock(),
            .mock2(),
            .mock3(),
            .mock4(),
            .mock5(),
            .mock6(),
            .mock8(),
            .mock9(),
            .mock10(),
            .mock11()
        ]
        
    }
}
