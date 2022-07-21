//
//  FrameworkDetailViewModel.swift
//  AppleFramework
//
//  Created by Songhee Choi on 2022/07/21.
//

import UIKit
import Combine

final class FrameworkDetailViewModel {
    
    init(framework: AppleFramework) {
        self.framework = CurrentValueSubject(framework)
    }
    // Data -> Output
    let framework: CurrentValueSubject<AppleFramework, Never>
    
    // User Action -> Input
    let buttonTapped = PassthroughSubject<AppleFramework, Never>()
    
    func learnMoreTapped() {
        buttonTapped.send(framework.value)
    }
}
