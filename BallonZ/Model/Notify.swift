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
    
    static func notificationBalloonsStartScene(startScene: BallonZ.StartScene){
        self.notificationRedBalloonStartScene(startScene: startScene)
        self.notificationBlueBalloonStartScene(startScene: startScene)
        self.notificationGreenBalloonStartScene(startScene: startScene)
        self.notificationYellowBalloonStartScene(startScene: startScene)
    }
    
    static func notificationBalloonsMainScene(mainScene: BallonZ.MainScene){
        mainScene.actions.notifyEliminateYellowBalloon1.onAction = { balloonYellowMainScene1 in
            balloonYellowMainScene1?.playAnimation(named: "NotifyEliminateYellowBalloon1")
        }
        
        mainScene.actions.notifyEliminateYellowBalloon2.onAction = { balloonYellowMainScene2 in
            balloonYellowMainScene2?.playAnimation(named: "NotifyEliminateYellowBalloon2")
        }
    }
    
    
}
