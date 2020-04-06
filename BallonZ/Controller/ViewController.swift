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
    //    @IBOutlet var arView: ARView!
    var arView: ARViewPersonalized!
    var startScene: BallonZ.StartScene!
    var colorsScene: BallonZ.ColorsScene!
    var tutorialScene: BallonZ.TutorialScene!
    var gameScene: BallonZ.GameScene!
    var hits: Int!
    
    
    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        
        let frameView = CGRect (x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        let arView = ARViewPersonalized(frame: frameView)
        arView.center = view.center
        self.view.addSubview(arView)
       
        //MARK: Load Scene
        self.loadScenes()

        //MARK: Add the entities to the scene
        arView.scene.anchors.append(self.startScene)
    }
    
    func loadScenes(){
        self.startScene = try! BallonZ.loadStartScene()
        self.colorsScene = try! BallonZ.loadColorsScene()
        self.tutorialScene = try! BallonZ.loadTutorialScene()
        self.gameScene = try! BallonZ.loadGameScene()
    }
    
    func f(){
        if let arView = self.view as? ARView{
            
            while arView.scene.name == gameScene.scene?.name {
                print("ESTOU NA GAME SCENE!!!")
            }
        }
    }
    
    func finalScene(){
        gameScene.actions.redBalloonEliminated.onAction = { _ in
            self.hits += 1
            print("HITOU: \(String(describing: self.hits))")
        }
        
        gameScene.actions.blueBalloonEliminated.onAction = { _ in
            self.hits += 1
            print("HITOU: \(String(describing: self.hits))")
        }
        
        gameScene.actions.greenBalloonEliminated.onAction = { _ in
            self.hits += 1
            print("HITOU: \(String(describing: self.hits))")
        }
        
        gameScene.actions.yellowBalloonEliminated.onAction = { _ in
            self.hits += 1
            print("HITOU: \(String(describing: self.hits))")
        }
    }
    
}

