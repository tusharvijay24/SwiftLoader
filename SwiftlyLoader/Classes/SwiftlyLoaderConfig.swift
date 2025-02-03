//
//  SwiftlyLoaderConfig.swift
//  SwiftlyLoader
//
//  Created by Tushar on 03/02/25.
//

import Foundation
import UIKit

public struct SwiftlyLoaderConfig {
    public var backgroundColor: UIColor
    public var indicatorColor: UIColor
    public var indicatorSize: CGFloat
    public var cornerRadius: CGFloat
    public var activityIndicatorStyle: UIActivityIndicatorView.Style

    public init(backgroundColor: UIColor = UIColor.black.withAlphaComponent(0.6),
                indicatorColor: UIColor = UIColor.white,
                indicatorSize: CGFloat = 80.0,
                cornerRadius: CGFloat = 10.0,
                activityIndicatorStyle: UIActivityIndicatorView.Style = .large) {
        self.backgroundColor = backgroundColor
        self.indicatorColor = indicatorColor
        self.indicatorSize = indicatorSize
        self.cornerRadius = cornerRadius
        self.activityIndicatorStyle = activityIndicatorStyle
    }
}
