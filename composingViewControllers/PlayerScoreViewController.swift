//
//  PlayerScoreViewController.swift
//  composingViewControllers
//
//  Created by Jørgen Eidem on 01/02/2018.
//  Copyright © 2018 Jørgen Eidem. All rights reserved.
//

import UIKit

final class PlayerScoreViewController: UIViewController {
    
    @IBOutlet private(set) weak var nameLabel: UILabel?
    @IBOutlet private(set) weak var scoreLabel: UILabel?
    
    var name: String? {
        set { nameLabel?.text = newValue }
        get { return nameLabel?.text }
    }
    
    var score: String? {
        set { scoreLabel?.text = newValue }
        get { return scoreLabel?.text }
    }
}

