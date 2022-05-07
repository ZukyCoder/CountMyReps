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
            self.goToHomeFlow()
        case .willShowFirstFlow:
            self.goToHomeFlow()
        case .willShowSecondFlow:
            self.goToHomeFlow()
        case .willShowThirdFlow:
            self.goToHomeFlow()
        case .initial, .didShowHomeFlow, .didShowFirstFlow, .didShowSecondFlow, .didShowThirdFlow:
            print("ERROR Unexpected Case in App Coordinator")
        }
    }
    
    func next(_ nextState: NavTabBarCoordinatorState) -> NavTabBarCoordinatorState {
        switch nextState {
        case .initial:
            return .willShowHomeFlow
        case .didShowHomeFlow:
            return .willShowFirstFlow
        case .didShowFirstFlow:
            return .willShowSecondFlow
        case .didShowSecondFlow:
            return .willShowThirdFlow
        case .didShowThirdFlow:
            return .willShowHomeFlow
        case .willShowHomeFlow, .willShowFirstFlow, .willShowSecondFlow, .willShowThirdFlow:
            return nextState
        }
    }
    
    private func goToHomeFlow() {
        
    }
}
