//
//  ViewController.swift
//  BallonZ
//
//  Created by Mateus Augusto M Ferreira on 26/03/20.
//  Copyright © 2020 Mateus Augusto M Ferreira. All rights reserved.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    var firstScene: BallonZ.StartScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the Scene
       // let boxAnchor = try! BallonZ
        
        self.firstScene = try! BallonZ.loadStartScene()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(firstScene)
    }
}
