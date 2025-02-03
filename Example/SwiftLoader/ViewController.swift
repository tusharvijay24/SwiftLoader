//
//  ViewController.swift
//  SwiftLoader
//
//  Created by tusharvijay24 on 02/03/2025.
//  Copyright (c) 2025 tusharvijay24. All rights reserved.
//

import UIKit
import SwiftLoader

class ViewController: UIViewController {
    
    var isLoaderVisible = false

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapIndicator(_ sender: UIButton) {
        let customConfig = SwiftLoaderConfig(
            backgroundColor: .black,
            indicatorColor: .magenta,
            indicatorSize: 50,
            cornerRadius: 15,
            activityIndicatorStyle: .medium
        )
        
        if isLoaderVisible {
            SwiftLoader.shared.hide()
            isLoaderVisible = false
        } else {
            SwiftLoader.shared.show(config: customConfig)
            isLoaderVisible = true
        }
    }
}
