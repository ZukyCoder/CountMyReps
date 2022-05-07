//
//  Coordinator.swift
//  CountMyReps
//
//  Created by Mario Andres Heberthardt Marchant on 7/5/22.
//

import Foundation

@objc protocol Coordinator {
    func start()
    @objc optional func refresh()
}
