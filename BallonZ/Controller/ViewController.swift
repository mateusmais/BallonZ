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

public class ViewController: UIViewController {
    
    //MARK: Variables
    var arView: ARViewPersonalized!
    var startScene: BallonZ.StartScene!
    var colorsScene: BallonZ.ColorsScene!
    var tutorialScene: BallonZ.TutorialScene!
    var gameScene: BallonZ.GameScene!
    var congratulationsScene: BallonZ.CongratulationsScene!
    let notify = Notify()
    
    
    //MARK: ViewDidLoad
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create ARView Frame
        let frameView = CGRect (x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        let arView = ARViewPersonalized(frame: frameView)
        arView.center = view.center
        
        //MARK: ADD ARView
        self.view.addSubview(arView)
       
        //MARK: Add Coaching
        arView.addCoaching()
        
        //MARK: Load Scene
        self.loadScenes()
        
        
        //MARK: Add StartScene
        arView.scene.anchors.append(self.startScene)
        
        //MARK:Notify's
        self.notify.notifyStartButton(startScene: startScene, arView: arView, colorsScene: colorsScene)
        self.notify.notifyTutorialButton(colorsScene: colorsScene, arView: arView, tutorialScene: tutorialScene)
        self.notify.notifyPlayButton(tutorialScene: tutorialScene, arView: arView, gameScene: gameScene)
        self.notify.notifyEliminatedBalloons(gameScene: gameScene, arView: arView, congratulationsScene: congratulationsScene)
        self.notify.notifyReturnButton(congratulationsScene: congratulationsScene, arView: arView, startScene: startScene)
        
    }
    
    //MARK: Load Scenes
    public func loadScenes(){
        self.startScene = try! BallonZ.loadStartScene()
        self.colorsScene = try! BallonZ.loadColorsScene()
        self.tutorialScene = try! BallonZ.loadTutorialScene()
        self.gameScene = try! BallonZ.loadGameScene()
        self.congratulationsScene = try! BallonZ.loadCongratulationsScene()
    }
}
