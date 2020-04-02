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

class ARViewPersonalized: ARView, ARSessionDelegate{
    let coachingOverlay = ARCoachingOverlayView()
    var startSceneAdd = false
    var ballons = Balloons()
}
