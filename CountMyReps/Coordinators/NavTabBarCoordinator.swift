//
//  NavTabBarCoordinator.swift
//  CountMyReps
//
//  Created by Mario Andres Heberthardt Marchant on 7/5/22.
//

import Foundation
import UIKit

class NavTabBarCoordinator: Coordinator {
    
    enum NavTabBarCoordinatorState {
        case initial
        case willShowHomeFlow
        case didShowHomeFlow
        case willShowFirstFlow
        case didShowFirstFlow
        case willShowSecondFlow
        case didShowSecondFlow
        case willShowThirdFlow
        case didShowThirdFlow
    }
    
    var navigator: UINavigationController
        var currentCoordinator: Coordinator?
        private var state: NavTabBarCoordinatorState
    
    public var rootViewController: UIViewController {
            return navigator
        }
    
    init(with navigator: UINavigationController, state: NavTabBarCoordinatorState) {
        self.navigator = navigator
        self.state = state
    }
    
    
    func start() {
        self.loop()
    }
    
    func loop() {
        self.state = next(self.state)
        switch self.state {
        case .willShowHomeFlow:
            <#code#>
        case .didShowHomeFlow:
            <#code#>
        case .willShowFirstFlow:
            <#code#>
        case .didShowFirstFlow:
            <#code#>
        case .willShowSecondFlow:
            <#code#>
        case .didShowSecondFlow:
            <#code#>
        case .willShowThirdFlow:
            <#code#>
        case .didShowThirdFlow:
            <#code#>
        case .initial:
            <#code#>
        }
    }
    
    func next(_ nextState: NavTabBarCoordinatorState) -> NavTabBarCoordinatorState {
        switch nextState {
        case .willShowHomeFlow:
            <#code#>
        case .didShowHomeFlow:
            <#code#>
        case .willShowFirstFlow:
            <#code#>
        case .didShowFirstFlow:
            <#code#>
        case .willShowSecondFlow:
            <#code#>
        case .didShowSecondFlow:
            <#code#>
        case .willShowThirdFlow:
            <#code#>
        case .didShowThirdFlow:
            <#code#>
        case .initial:
            <#code#>
        }
    }
}
