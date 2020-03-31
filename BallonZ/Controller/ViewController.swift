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
    var startScene: BallonZ.StartScene!
    var mainScene: BallonZ.MainScene!
//    var balloonRed: Entity?
//    var balloonBlue: Entity?
//    var balloonGreen: Entity?
//    var balloonYellow: Entity?
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
        
        
        //MARK: Entities
        Balloons.balloonsStartScene(firstScene: self.startScene)
        Balloons.balloonsMainScene(mainScene: self.mainScene)
      
        //MARK: Balloons Notifications
        Notify.notificationBalloonsStartScene(startScene: self.startScene)
        Notify.notificationBalloonsMainScene(mainScene: self.mainScene)
        
        //MARK: Add the entities to the scene
        arView.scene.anchors.append(startScene)
    }
}
