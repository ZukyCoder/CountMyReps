//
//  AppCoordinator.swift
//  CountMyReps
//
//  Created by Mario Andres Heberthardt Marchant on 7/5/22.
//

import Foundation
import UIKit

class AppCoordinator:  Coordinator {
    
    enum AppCoordinatorState{
        case initial
        case willShowTabNavFlow
    }
    
    var navigation: UINavigationController
    var currentCoordinator: Coordinator?
    private var state: AppCoordinatorState
    
    init(with navigation: UINavigationController, state: AppCoordinatorState) {
        self.navigation = navigation
        self.state = state
    }
    
    func start() {
        self.loop()
    }
    
    private func loop() {
        self.state = next(self.state)
        switch self.state {
        case .initial:
            print("Error, Unexpected Case in App Coordinator")
        case .willShowTabNavFlow:
            self.willShowTabBarFlow()
        }
    }
    
    private func next(_ nextState: AppCoordinatorState) -> AppCoordinatorState {
        switch nextState {
        case .initial:
            return .willShowTabNavFlow
        case .willShowTabNavFlow:
            return nextState
        }
    }
    
    private func willShowTabBarFlow() {
        currentCoordinator = NavTabBarCoordinator(with: navigation, state: .initial)
            self.navigation.dismiss(animated: true) {
                self.currentCoordinator?.start()
            }
        }
}

