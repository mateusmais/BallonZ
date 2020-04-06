//
//  ARViewPersonalized.swift
//  BallonZ
//
//  Created by Mateus Augusto M Ferreira on 30/03/20.
//  Copyright © 2020 Mateus Augusto M Ferreira. All rights reserved.
//

import Foundation
import ARKit
import RealityKit

class ARViewPersonalized: ARView, ARSessionDelegate, ARCoachingOverlayViewDelegate{
    let coachingOverlay = ARCoachingOverlayView()
    var balloonzAnchorAdd = false
    
    func addCoaching() {
           coachingOverlay.autoresizingMask = [
               .flexibleWidth, .flexibleHeight
           ]
           coachingOverlay.goal = .horizontalPlane
           coachingOverlay.session = self.session
           coachingOverlay.delegate = self
           coachingOverlay.frame = self.frame
           coachingOverlay.activatesAutomatically = true
           
           
           self.addSubview(coachingOverlay)
           coachingOverlay.setActive(true, animated: true)
       }
       
       func coachingOverlayViewDidDeactivate(_ coachingOverlayView: ARCoachingOverlayView) {
           if !balloonzAnchorAdd{
            self.scene.anchors.append(try! BallonZ.loadStartScene())
               balloonzAnchorAdd = true
           }
       }

}




