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
    static func notificationBalloonRed(firstScene: BallonZ.StartScene){
        firstScene.actions.notifyBalloonRed.onAction = { balloonRed in
            print("TOCOU NO VERMELHO")
        }
    }
    
    static func notificationBalloonBlue(firstScene: BallonZ.StartScene){
        firstScene.actions.notifyBalloonBlue.onAction = { balloonBlue in
            print("TOCOU NO AZUL")
        }
    }
    
    static func notificationBalloonGreen(firstScene: BallonZ.StartScene){
        firstScene.actions.notifyBalloonGreen.onAction = { balloonGreen in
            print("TOCOU NO VERDE")
        }
    }
    
    static func notificationBalloonYellow(firstScene: BallonZ.StartScene){
        firstScene.actions.notifyBalloonYellow.onAction = { balloonYellow in
            print("TOCOU NO AMARELO")
        }
    }
}
