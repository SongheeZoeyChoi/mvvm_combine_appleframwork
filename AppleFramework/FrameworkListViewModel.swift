//
//  FrameworkListViewModel.swift
//  AppleFramework
//
//  Created by Songhee Choi on 2022/07/21.
//

import UIKit
import Combine

final class FrameworkListViewModel {
    
    init(items: [AppleFramework], selectedItem: AppleFramework? = nil) {
        self.items = CurrentValueSubject(items)
        self.selectedItem = CurrentValueSubject(selectedItem)
    }
    
    
    //Output : Data
    let items: CurrentValueSubject<[AppleFramework], Never>
    
    
    //Input : User Action
    let didSelect = PassthroughSubject<AppleFramework?, Never>()
    var selectedItem: CurrentValueSubject<AppleFramework?, Never>
    
    func didSelect(at indexPath: IndexPath) {
        let framework = items.value[indexPath.item]
        selectedItem.send(framework)
    }
}
