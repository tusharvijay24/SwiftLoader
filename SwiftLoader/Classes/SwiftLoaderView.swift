//
//  SwiftLoaderView.swift
//  SwiftLoader
//
//  Created by Tushar on 03/02/25.
//

import UIKit

public class SwiftLoaderView: UIView {
    
    private let containerView = UIView()
    private let activityIndicator = UIActivityIndicatorView()
    
    private var config: SwiftLoaderConfig!
    
    init(config: SwiftLoaderConfig) {
        super.init(frame: UIScreen.main.bounds)
        self.config = config
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        self.backgroundColor = UIColor.clear // ✅ Allows taps to pass through background
        
        // Configure the container
        containerView.backgroundColor = config.backgroundColor
        containerView.layer.cornerRadius = config.cornerRadius
        containerView.clipsToBounds = true
        containerView.translatesAutoresizingMaskIntoConstraints = false
        
#if swift(>=4.2)
        activityIndicator.style = config.activityIndicatorStyle // ✅ For Swift 4.2+
#else
        activityIndicator.activityIndicatorViewStyle = config.activityIndicatorStyle // ✅ For Swift 4.1 and below
#endif
        activityIndicator.color = config.indicatorColor
        activityIndicator.startAnimating()
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        
        // Add subviews
        addSubview(containerView)
        containerView.addSubview(activityIndicator)
        
        // Apply constraints for centering
        NSLayoutConstraint.activate([
            containerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: centerYAnchor),
            containerView.widthAnchor.constraint(equalToConstant: config.indicatorSize),
            containerView.heightAnchor.constraint(equalToConstant: config.indicatorSize),
            
            activityIndicator.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: containerView.centerYAnchor)
        ])
    }
    
    // ✅ Allow taps to pass through the background
    public override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        return containerView.frame.contains(point) // ✅ Only block touches inside loader
    }
    
    public func stop() {
        activityIndicator.stopAnimating()
        self.removeFromSuperview()
    }
}
