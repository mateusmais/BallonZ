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
    func balloonsLearningYellowScene(learningYellowScene: BallonZ.LearningYellowScene)
}


public class Balloons: BalloonsDelegate {
    
    //MARK: Variables
    var balloonRedStartScene: Entity?
    var balloonBlueStartScene: Entity?
    var balloonGreenStartScene: Entity?
    var balloonYellowStartScene: Entity?
    
    var balloonYellowMainScene1: Entity?
    var balloonYellowMainScene2: Entity?
    var balloonYellowMainScene3: Entity?
    var balloonYellowMainScene4: Entity?
    
    
    func balloonsStartScene(startScene: BallonZ.StartScene) {
        self.balloonRedStartScene = startScene.findEntity(named: "balloonRed")
        self.balloonBlueStartScene = startScene.findEntity(named: "balloonBlue")
        self.balloonGreenStartScene = startScene.findEntity(named: "balloonGreen")
        self.balloonYellowStartScene = startScene.findEntity(named: "balloonYellow")
    }
    
    func balloonsLearningYellowScene(learningYellowScene: BallonZ.LearningYellowScene) {
        self.balloonYellowMainScene1 = learningYellowScene.findEntity(named: "balloonYellow1")
        self.balloonYellowMainScene2 = learningYellowScene.findEntity(named: "balloonYellow2")
        self.balloonYellowMainScene3 = learningYellowScene.findEntity(named: "balloonYellow3")
        self.balloonYellowMainScene4 = learningYellowScene.findEntity(named: "balloonYellow4")
    }
    
}
