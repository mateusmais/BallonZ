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
    var startButton: Entity?
    
    var balloonRedStartScene: Entity?
    var balloonBlueStartScene: Entity?
    var balloonGreenStartScene: Entity?
    var balloonYellowStartScene: Entity?
    
    var balloonRedLearningScene1: Entity?
    var balloonRedLearningScene2: Entity?
    var balloonRedLearningScene3: Entity?
    var balloonRedLearningScene4: Entity?
    
    var balloonGreenLearningScene1: Entity?
    var balloonGreenLearningScene2: Entity?
    var balloonGreenLearningScene3: Entity?
    var balloonGreenLearningScene4: Entity?
    
    var balloonBlueLearningScene1: Entity?
    var balloonBlueLearningScene2: Entity?
    var balloonBlueLearningScene3: Entity?
    var balloonBlueLearningScene4: Entity?
    
    var balloonYellowLearningScene1: Entity?
    var balloonYellowLearningScene2: Entity?
    var balloonYellowLearningScene3: Entity?
    var balloonYellowLearningScene4: Entity?
    
    
    func balloonsStartScene(startScene: BallonZ.StartScene) {
        self.balloonRedStartScene = startScene.findEntity(named: "balloonRed")
        self.balloonBlueStartScene = startScene.findEntity(named: "balloonBlue")
        self.balloonGreenStartScene = startScene.findEntity(named: "balloonGreen")
        self.balloonYellowStartScene = startScene.findEntity(named: "balloonYellow")
        self.startButton = startScene.findEntity(named: "startButton")
    }
    
    func balloonsLearningRedScene(learningRedScene: BallonZ.LearningYellowScene) {
        self.balloonRedLearningScene1 = learningRedScene.findEntity(named: "balloonRed1")
        self.balloonRedLearningScene2 = learningRedScene.findEntity(named: "balloonRed2")
        self.balloonRedLearningScene3 = learningRedScene.findEntity(named: "balloonRed3")
        self.balloonRedLearningScene4 = learningRedScene.findEntity(named: "balloonRed4")
    }
    
    func balloonsLearningGreenScene(learningGreenScene: BallonZ.LearningYellowScene) {
        self.balloonGreenLearningScene1 = learningGreenScene.findEntity(named: "balloonGreen1")
        self.balloonGreenLearningScene2 = learningGreenScene.findEntity(named: "balloonGreen2")
        self.balloonGreenLearningScene3 = learningGreenScene.findEntity(named: "balloonGreen3")
        self.balloonGreenLearningScene4 = learningGreenScene.findEntity(named: "balloonGreen4")
    }
    
    func balloonsLearningBlueScene(learningBlueScene: BallonZ.LearningYellowScene) {
        self.balloonBlueLearningScene1 = learningBlueScene.findEntity(named: "balloonBlue1")
        self.balloonBlueLearningScene2 = learningBlueScene.findEntity(named: "balloonBlue2")
        self.balloonBlueLearningScene3 = learningBlueScene.findEntity(named: "balloonBlue3")
        self.balloonBlueLearningScene4 = learningBlueScene.findEntity(named: "balloonBlue4")
    }
    
    func balloonsLearningYellowScene(learningYellowScene: BallonZ.LearningYellowScene) {
        self.balloonYellowLearningScene1 = learningYellowScene.findEntity(named: "balloonYellow1")
        self.balloonYellowLearningScene2 = learningYellowScene.findEntity(named: "balloonYellow2")
        self.balloonYellowLearningScene3 = learningYellowScene.findEntity(named: "balloonYellow3")
        self.balloonYellowLearningScene4 = learningYellowScene.findEntity(named: "balloonYellow4")
    }
    
}
