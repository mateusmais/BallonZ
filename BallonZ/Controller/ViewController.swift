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
    var learningYellowScene: BallonZ.LearningYellowScene!
    var colorsScene: BallonZ.ColorsScene!
    var learningRedScene: BallonZ.LearningRedScene!
    var learningBlueScene: BallonZ.LearningBlueScene!
    var learningGreenScene: BallonZ.LearningGreenScene!
    var balloons: Balloons?
    var label: Label!
    
    
    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Create and positioning Label
        self.label = Label(text: "Press Start", frame: CGRect(x: 0, y: 0, width: self.arView.frame.size.width * 0.20, height: self.arView.frame.size.height * 0.1), position: CGPoint(x: self.arView.frame.size.width * 0.50, y: self.arView.frame.size.height * 0.20), color: .white)
        
        //MARK: Load Scene
        self.loadScenes()
        
        //MARK: Add Entities
        self.addEntities()
        
        //Add Label to ARView
        self.arView.addSubview(label)
        
        //MARK: Balloons Notifications
        Notify.allNotify(startScene: self.startScene, learningRS: self.learningRedScene, learningYS: self.learningYellowScene)
        
        self.mostrarLabelLearningSceneYellow()
        
        //MARK: Add the entities to the scene
        arView.scene.anchors.append(self.colorsScene)
    }
   
}

