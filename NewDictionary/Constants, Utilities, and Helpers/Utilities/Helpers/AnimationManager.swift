//
//  AnimationManager.swift
//  NewDictionary
//
//  Created by Alexander Parshakov on 21.10.2019.
//  Copyright © 2019 Alexander Parshakov. All rights reserved.
//

import Foundation
import UIKit
import Lottie

final class AnimationManager {
    
    static func startAnimation(animationView: AnimationView) {
        animationView.animation = Animation.named(Constants.ResourceNames.basicLoader)
        animationView.loopMode = .loop
        animationView.play()
    }
    static func startTableRefreshAnimation(refreshControl: UIRefreshControl) {
        let refreshView = refreshControl.viewWithTag(1)
        for view in refreshView!.subviews {
            if let animationView = view as? AnimationView {
                self.startAnimation(animationView: animationView)
            }
        }
    }
    
    static func setTableRefreshControl(refreshControl: UIRefreshControl, forTable table: UITableView) {
        
        guard let customView = Bundle.main.loadNibNamed(Constants.ResourceNames.basicRefreshControl, owner: nil, options: nil) else { return }
        guard let refreshView = customView[0] as? UIView else { return }
        
        refreshView.tag = 1
        refreshView.frame = refreshControl.frame
        refreshControl.addSubview(refreshView)
        
        table.refreshControl = refreshControl
        refreshControl.tintColor = .clear
        refreshControl.backgroundColor = .clear
    }
}
