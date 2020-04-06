//
//  Balloons.swift
//  BallonZ
//
//  Created by Mateus Augusto M Ferreira on 31/03/20.
//  Copyright © 2020 Mateus Augusto M Ferreira. All rights reserved.
//

import Foundation
import RealityKit


protocol BalloonsDelegate{
    func balloonsStartScene(startScene: BallonZ.StartScene)
}


public class Balloons: BalloonsDelegate {
    
    //MARK: Variables
    var startButton: Entity?
    
    var balloonRedStartScene: Entity?
    var balloonBlueStartScene: Entity?
    var balloonGreenStartScene: Entity?
    var balloonYellowStartScene: Entity?
    
    
    func balloonsStartScene(startScene: BallonZ.StartScene) {
        self.balloonRedStartScene = startScene.findEntity(named: "balloonRed")
        self.balloonBlueStartScene = startScene.findEntity(named: "balloonBlue")
        self.balloonGreenStartScene = startScene.findEntity(named: "balloonGreen")
        self.balloonYellowStartScene = startScene.findEntity(named: "balloonYellow")
        self.startButton = startScene.findEntity(named: "startButton")
    }
        
}
