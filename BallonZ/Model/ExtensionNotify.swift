//
//  ExtensionNotify.swift
//  BallonZ
//
//  Created by Mateus Augusto M Ferreira on 02/04/20.
//  Copyright © 2020 Mateus Augusto M Ferreira. All rights reserved.
//

import Foundation


extension Notify{
    static func allNotify(startScene: BallonZ.StartScene, learningRS: BallonZ.LearningRedScene, learningYS: BallonZ.LearningYellowScene ){
        Notify.notificationBalloonsStartScene(startScene: startScene)
        Notify.notifyEliminateRedBalloons(learningRedScene: learningRS)
        Notify.notifyEliminateYellowBalloons(learningYellowScene: learningYS)
    }
}
