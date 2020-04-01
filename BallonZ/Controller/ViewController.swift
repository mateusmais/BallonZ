//
//  ViewController.swift
//  BallonZ
//
//  Created by Mateus Augusto M Ferreira on 26/03/20.
//  Copyright © 2020 Mateus Augusto M Ferreira. All rights reserved.
//

import UIKit
import RealityKit
import ARKit

class ViewController: UIViewController {
    
    //MARK: Variables
    @IBOutlet var arView: ARView!
    var startScene: BallonZ.StartScene!
    var mainScene: BallonZ.MainScene!
    var balloons: Balloons?
    var label: Label!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Create and positioning Label
        self.label = Label(text: "Press Start", frame: CGRect(x: 0, y: 0, width: self.arView.frame.size.width * 0.20, height: self.arView.frame.size.height * 0.1), position: CGPoint(x: self.arView.frame.size.width * 0.50, y: self.arView.frame.size.height * 0.20), color: .white)
        
        //Add Label to ARView
        self.arView.addSubview(label)
        
        //MARK: Load Scene
        self.startScene = try! BallonZ.loadStartScene()
        self.mainScene = try! BallonZ.loadMainScene()
        
        
        //MARK: Add Entities
        self.balloons?.balloonsStartScene(startScene: self.startScene)
        self.balloons?.balloonsMainScene(startScene: self.mainScene)
        
      
        //MARK: Balloons Notifications
        Notify.notificationBalloonsStartScene(startScene: self.startScene)
        Notify.notifyEliminateYellowBalloons(mainScene: self.mainScene)
        
        //MARK: Add the entities to the scene
        arView.scene.anchors.append(startScene)
    }
}
