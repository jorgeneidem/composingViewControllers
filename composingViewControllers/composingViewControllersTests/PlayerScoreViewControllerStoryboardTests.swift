//
//  Copyright © 2018 Jørgen Eidem. All rights reserved.
//

import XCTest
@testable import composingViewControllers

class PlayerScoreViewControllerStoryboardTests: XCTestCase {
    
    func test_playerOneStoryboardInitionalViewController_isPlayerScoreViewController() {
        let storyboard = UIStoryboard(name: "PlayerOne", bundle: nil)
        XCTAssertTrue(storyboard.instantiateInitialViewController() is PlayerScoreViewController)
    }
    
    func test_playerOneStoryboard_nameSetter_updatesNameLabel() {
        let vc = makePlayerScoreViewController(storyboard: makePlayerOneStoryboard())
        vc.name = "Some name"
        XCTAssertEqual(vc.nameLabel?.text, "Some name")
    }
    
    func test_playerOneStoryboard_scoreSetter_updatesScoreLabel() {
        let vc = makePlayerScoreViewController(storyboard: makePlayerOneStoryboard())
        vc.score = "Some score"
        XCTAssertEqual(vc.scoreLabel?.text, "Some score")
    }
    
    // Helpers:
    
    private func makePlayerOneStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "PlayerOne", bundle: nil)
    }
    
    private func makePlayerScoreViewController(storyboard: UIStoryboard) -> PlayerScoreViewController {
        let vc = storyboard.instantiateInitialViewController() as! PlayerScoreViewController
        _ = vc.view
        return vc
    }
    
    
}

