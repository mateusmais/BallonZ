//
//  ExtensionARView.swift
//  BallonZ
//
//  Created by Mateus Augusto M Ferreira on 02/04/20.
//  Copyright © 2020 Mateus Augusto M Ferreira. All rights reserved.
//

import Foundation
import RealityKit


extension ViewController{
    
    func loadScenes(){
        self.startScene = try! BallonZ.loadStartScene()
        self.colorsScene = try! BallonZ.loadColorsScene()
        self.learningRedScene = try! BallonZ.loadLearningRedScene()
        self.learningGreenScene = try! BallonZ.loadLearningGreenScene()
        self.learningBlueScene = try! BallonZ.loadLearningBlueScene()
        self.learningYellowScene = try! BallonZ.loadLearningYellowScene()
    }
    
    func addEntities(){
        self.balloons?.balloonsStartScene(startScene: self.startScene)
        self.balloons?.balloonsLearningYellowScene(learningYellowScene: self.learningYellowScene)
    }
    
    func mostrarLabelLearningSceneYellow(){
        if self.learningYellowScene.isActive {
            arView.addSubview(label)
        }
    }
}
