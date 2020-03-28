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

class ARViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()

        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
    }
}
