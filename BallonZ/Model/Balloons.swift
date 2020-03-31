//
//  Balloons.swift
//  BallonZ
//
//  Created by Mateus Augusto M Ferreira on 31/03/20.
//  Copyright © 2020 Mateus Augusto M Ferreira. All rights reserved.
//

import Foundation
import RealityKit


//MARK: Variables StartScene
var balloonRedStartScene: Entity?
var balloonBlueStartScene: Entity?
var balloonGreenStartScene: Entity?
var balloonYellowStartScene: Entity?

//MARK: Variables MainScene
var balloonYellowMainScene1: Entity?
var balloonYellowMainScene2: Entity?
var balloonYellowMainScene3: Entity?
var balloonYellowMainScene4: Entity?


//MARK: Struct Balloons
struct Balloons {
    static func balloonsStartScene(firstScene: BallonZ.StartScene){
        balloonRedStartScene = firstScene.findEntity(named: "balloonRed")
        balloonBlueStartScene = firstScene.findEntity(named: "balloonBlue")
        balloonGreenStartScene = firstScene.findEntity(named: "balloonGreen")
        balloonYellowStartScene = firstScene.findEntity(named: "balloonYellow")
    }
    
    static func balloonsMainScene(mainScene: BallonZ.MainScene){
        balloonYellowMainScene1 = mainScene.findEntity(named: "balloonYellow1")
        balloonYellowMainScene2 = mainScene.findEntity(named: "balloonYellow2")
        balloonYellowMainScene3 = mainScene.findEntity(named: "balloonYellow3")
        balloonYellowMainScene4 = mainScene.findEntity(named: "balloonYellow4")
    }
}
