//
//  ViewController.swift
//  Split Mind
//
//  Created by Frank Solleveld on 28/03/2020.
//  Copyright © 2020 Frank Solleveld. All rights reserved.
//

// This will be the AR View Controller.

import UIKit
import RealityKit
import ARKit

class ARViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        
//        setupARView()
//        
//        arView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap(recognizer:))))
//    }
//    
//    
//    // MARK: - Setup Methods
//    
//    func setupARView(){
//        arView.automaticallyConfigureSession = false
//        let configuration = ARWorldTrackingConfiguration()
//        configuration.planeDetection = [.horizontal, .vertical]
//        configuration.environmentTexturing = .automatic
//        arView.session.run(configuration)
//    }
//    
//    // MARK: Object Placement
//    @objc
//    func handleTap(recognizer: UITapGestureRecognizer) {
//        
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Psychosis.loadHorror()

        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
    }
}
