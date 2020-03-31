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
    var balloonRed: Entity?
    var balloonBlue: Entity?
    var balloonGreen: Entity?
    var balloonYellow: Entity?
    var label: Label!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Create and positioning Label
        self.label = Label(text: "Press Start", frame: CGRect(x: 0, y: 0, width: self.arView.frame.size.width * 0.50, height: self.arView.frame.size.height * 0.05), position: CGPoint(x: self.arView.frame.size.width * 0.50, y: self.arView.frame.size.height * 0.10), color: .white)
        
        //Add Label to ARView
        self.arView.addSubview(label)
        
        //MARK: Load Scene
        self.firstScene = try! BallonZ.loadStartScene()
        
        //Problem to Solve
        //MARK: Entities
        self.balloonRed = self.firstScene.findEntity(named: "balloonRed")
        self.balloonBlue = self.firstScene.findEntity(named: "balloonBlue")
        self.balloonGreen = self.firstScene.findEntity(named: "balloonGreen")
        self.balloonYellow = self.firstScene.findEntity(named: "balloonYellow")
      
        //MARK: Balloons Notifications
        Notify.notificationBalloonRed(firstScene: self.firstScene)
        Notify.notificationBalloonBlue(firstScene: self.firstScene)
        Notify.notificationBalloonGreen(firstScene: self.firstScene)
        Notify.notificationBalloonYellow(firstScene: self.firstScene)
        
        //MARK: Add the entities to the scene
        arView.scene.anchors.append(firstScene)
    }
}
