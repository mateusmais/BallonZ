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
    
    //MARK: Variables
    @IBOutlet var arView: ARView!
    var firstScene: BallonZ.StartScene!
    var balloonRed = Entity()
    var balloonBlue = Entity()
    var balloonGreen = Entity()
    var balloonRedYellow = Entity()
    var label: Label!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label = Label(text: "Press Start", frame: CGRect(x: 0, y: 0, width: self.arView.frame.size.width * 0.50, height: self.arView.frame.size.height * 0.05), position: CGPoint(x: self.arView.frame.size.width * 0.50, y: self.arView.frame.size.height * 0.10), color: .white)
        self.arView.addSubview(label)
        
        self.firstScene = try! BallonZ.loadStartScene()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(firstScene)
    }
}
