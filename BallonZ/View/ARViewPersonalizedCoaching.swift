//
//  ARViewPersonalizedCoaching.swift
//  BallonZ
//
//  Created by Mateus Augusto M Ferreira on 02/04/20.
//  Copyright © 2020 Mateus Augusto M Ferreira. All rights reserved.
//

import Foundation
import RealityKit
import ARKit

extension ARViewPersonalized: ARCoachingOverlayViewDelegate{
    
    func addCoaching(){
        coachingOverlay.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        coachingOverlay.goal = .horizontalPlane
        coachingOverlay.session = self.session
        coachingOverlay.delegate = self
        coachingOverlay.frame = self.frame
        self.addSubview(coachingOverlay)
    }
    
    
    func coachingOverlayViewDidDeactivate(_ coachingOverlayView: ARCoachingOverlayView, startScene: BallonZ.StartScene) {
        print("ANTES DO IF")
        if !startSceneAdd{
            print("ENTROU AQUI NO IF")
            self.scene.anchors.append(startScene)
            startSceneAdd = true
        }
    }
}
