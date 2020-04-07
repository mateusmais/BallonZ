//
//  Notify.swift
//  BallonZ
//
//  Created by Mateus Augusto M Ferreira on 30/03/20.
//  Copyright © 2020 Mateus Augusto M Ferreira. All rights reserved.
//

import Foundation
import RealityKit


public class Notify {
    
    var hits = Int()
    
    func notifyStartButton(startScene: BallonZ.StartScene, arView: ARViewPersonalized, colorsScene: BallonZ.ColorsScene){
        startScene.actions.startButtonPressed.onAction = { startButton in
            arView.scene.anchors.remove(startScene)
            arView.scene.anchors.append(colorsScene)
        }
    }
    
    func notifyTutorialButton(colorsScene: BallonZ.ColorsScene, arView: ARViewPersonalized, tutorialScene: BallonZ.TutorialScene){
        colorsScene.actions.tutorialButtonPressed.onAction = { tutorialButton in
            arView.scene.anchors.remove(colorsScene)
            arView.scene.anchors.append(tutorialScene)
        }
    }
    
    func notifyPlayButton(tutorialScene: BallonZ.TutorialScene, arView: ARViewPersonalized, gameScene: BallonZ.GameScene){
        tutorialScene.actions.playButtonPressed.onAction = { playButton in
            arView.scene.anchors.remove(tutorialScene)
            arView.scene.anchors.append(gameScene)
        }
    }
    
    func notifyReturnButton(congratulationsScene: BallonZ.CongratulationsScene, arView: ARViewPersonalized, startScene: BallonZ.StartScene){
        congratulationsScene.actions.returnButtonPressed.onAction = { returnButton in
            arView.scene.anchors.remove(congratulationsScene)
            arView.scene.anchors.append(startScene)
        }
        
    }
    
    
    func redBalloonEliminated(gameScene: BallonZ.GameScene, arView: ARViewPersonalized, congratulationsScene: BallonZ.CongratulationsScene){
        gameScene.actions.redBalloonEliminated.onAction = { redBalloon in
            self.hits += 1
            if(self.hits == 4){
                arView.scene.anchors.remove(gameScene)
                arView.scene.anchors.append(congratulationsScene)
            }
        }
        
    }
    
    func greenBalloonEliminated(gameScene: BallonZ.GameScene, arView: ARViewPersonalized, congratulationsScene: BallonZ.CongratulationsScene){
        gameScene.actions.greenBalloonEliminated.onAction = { greenBalloon in
            self.hits += 1
            if(self.hits == 4){
                arView.scene.anchors.remove(gameScene)
                arView.scene.anchors.append(congratulationsScene)
            }
        }
        
    }
    
    func blueBalloonEliminated(gameScene: BallonZ.GameScene, arView: ARViewPersonalized, congratulationsScene: BallonZ.CongratulationsScene){
        gameScene.actions.blueBalloonEliminated.onAction = { blueBalloon in
            self.hits += 1
            if(self.hits == 4){
                arView.scene.anchors.remove(gameScene)
                arView.scene.anchors.append(congratulationsScene)
            }
        }
        
    }
    
    func yellowBalloonEliminated(gameScene: BallonZ.GameScene, arView: ARViewPersonalized, congratulationsScene: BallonZ.CongratulationsScene){
        gameScene.actions.yellowBalloonEliminated.onAction = { yellowBalloon in
            self.hits += 1
            if(self.hits == 4){
                arView.scene.anchors.remove(gameScene)
                arView.scene.anchors.append(congratulationsScene)
            }
        }
        
    }
    
    
    func notifyEliminatedBalloons(gameScene: BallonZ.GameScene, arView: ARViewPersonalized, congratulationsScene: BallonZ.CongratulationsScene){
        self.redBalloonEliminated(gameScene: gameScene, arView: arView, congratulationsScene: congratulationsScene)
        self.greenBalloonEliminated(gameScene: gameScene, arView: arView, congratulationsScene: congratulationsScene)
        self.blueBalloonEliminated(gameScene: gameScene, arView: arView, congratulationsScene: congratulationsScene)
        self.yellowBalloonEliminated(gameScene: gameScene, arView: arView, congratulationsScene: congratulationsScene)
    }
    
    
}
