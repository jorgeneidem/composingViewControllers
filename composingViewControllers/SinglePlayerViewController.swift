//
//  SinglePlayerViewController.swift
//  composingViewControllers
//
//  Created by Jørgen Eidem on 01/02/2018.
//  Copyright © 2018 Jørgen Eidem. All rights reserved.
//

import UIKit

final class SinglePlayerViewController: UIViewController {
    
    private(set) var player: PlayerScoreViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Player", let vc = segue.destination as? PlayerScoreViewController {
            player = vc
        }
    }
}
