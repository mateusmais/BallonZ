//
//  Notify.swift
//  BallonZ
//
//  Created by Mateus Augusto M Ferreira on 30/03/20.
//  Copyright © 2020 Mateus Augusto M Ferreira. All rights reserved.
//

import Foundation
import RealityKit


struct Notify {
    
    static func notificationRedBalloonStartScene(startScene: BallonZ.StartScene){
        startScene.actions.notifyBalloonRed.onAction = { balloonRedStartScene in
            print("TOCOU NO VERMELHO")
        }
    }
    
    static func notificationBlueBalloonStartScene(startScene: BallonZ.StartScene){
        startScene.actions.notifyBalloonBlue.onAction = { balloonBlueStartScene in
            print("TOCOU NO AZUL")
        }
    }
    
    static func notificationGreenBalloonStartScene(startScene: BallonZ.StartScene){
        startScene.actions.notifyBalloonGreen.onAction = { balloonGreenStartScene in
            print("TOCOU NO VERDE")
        }
    }
    
    static func notificationYellowBalloonStartScene(startScene: BallonZ.StartScene){
        startScene.actions.notifyBalloonYellow.onAction = { balloonYellowStartScene in
            print("TOCOU NO AMARELO")
        }
    }
    
     //MARK: Notify Touch All Balloons
    static func notificationBalloonsStartScene(startScene: BallonZ.StartScene){
        self.notificationRedBalloonStartScene(startScene: startScene)
        self.notificationBlueBalloonStartScene(startScene: startScene)
        self.notificationGreenBalloonStartScene(startScene: startScene)
        self.notificationYellowBalloonStartScene(startScene: startScene)
    }
    
    static func eliminateYellowBalloonMainScene1(learningYellowScene: BallonZ.LearningYellowScene){
        learningYellowScene.actions.yellowBalloonEliminated1.onAction = { balloonYellowMainScene1 in
            print("Balao 1 Eliminado")
        }
    }
    
    static func eliminateYellowBalloonMainScene2(learningYellowScene: BallonZ.LearningYellowScene){
         learningYellowScene.actions.yellowBalloonEliminated2.onAction = { balloonYellowMainScene2 in
                  print("Balao 2 Eliminado")
              }
    }
    
    static func eliminateYellowBalloonMainScene3(learningYellowScene: BallonZ.LearningYellowScene){
            learningYellowScene.actions.yellowBalloonEliminated3.onAction = { balloonYellowMainScene3 in
                     print("Balao 3 Eliminado")
                 }
       }
    
    static func eliminateYellowBalloonMainScene4(learningYellowScene: BallonZ.LearningYellowScene){
            learningYellowScene.actions.yellowBalloonEliminated4.onAction = { balloonYellowMainScene4 in
                 }
       }
 
    //MARK: Notify Eliminate All Yellow Balloons
    static func notifyEliminateYellowBalloons(learningYellowScene: BallonZ.LearningYellowScene){
           self.eliminateYellowBalloonMainScene1(learningYellowScene: learningYellowScene)
           self.eliminateYellowBalloonMainScene2(learningYellowScene: learningYellowScene)
           self.eliminateYellowBalloonMainScene3(learningYellowScene: learningYellowScene)
           self.eliminateYellowBalloonMainScene4(learningYellowScene: learningYellowScene)
        
        
    }
    
}
