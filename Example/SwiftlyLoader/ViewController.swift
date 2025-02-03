//
//  ViewController.swift
//  SwiftlyLoader
//
//  Created by tusharvijay24 on 02/03/2025.
//  Copyright (c) 2025 tusharvijay24. All rights reserved.
//

import UIKit
import SwiftlyLoader
class ViewController: UIViewController {
    
    var isLoaderVisible = false // ✅ Track loader state

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapIndicator(_ sender: UIButton) {
        let customConfig = SwiftlyLoaderConfig(
            backgroundColor: .white,
            indicatorColor: .magenta,
            indicatorSize: 50,
            cornerRadius: 15,
            activityIndicatorStyle: .medium
        )
        
        if isLoaderVisible {
            SwiftlyLoader.shared.hide() // ✅ Hide if already visible
            isLoaderVisible = false
        } else {
            SwiftlyLoader.shared.show(config: customConfig) // ✅ Show if hidden
            isLoaderVisible = true
        }
    }
}
