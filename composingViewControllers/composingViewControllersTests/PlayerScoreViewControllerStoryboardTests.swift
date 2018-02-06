//
//  Copyright © 2018 Jørgen Eidem. All rights reserved.
//

import XCTest
@testable import composingViewControllers

class PlayerScoreViewControllerStoryboardTests: XCTestCase {
    
    // PlayerOne storyboard tests:
    
    func test_playerOneStoryboardInitionalViewController_isPlayerScoreViewController() {
        let storyboard = makePlayerOneStoryboard()
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
    
    // PlayerTwo storyboard tests:
    
    func test_playerTwoStoryboardInitionalViewController_isPlayerScoreViewController() {
        let storyboard = makePlayerTwoStoryboard()
        XCTAssertTrue(storyboard.instantiateInitialViewController() is PlayerScoreViewController)
    }
    
    func test_playerTwoStoryboard_nameSetter_updatesNameLabel() {
        let vc = makePlayerScoreViewController(storyboard: makePlayerTwoStoryboard())
        vc.name = "Some name"
        XCTAssertEqual(vc.nameLabel?.text, "Some name")
    }
    
    func test_playerTwoStoryboard_scoreSetter_updatesScoreLabel() {
        let vc = makePlayerScoreViewController(storyboard: makePlayerTwoStoryboard())
        vc.score = "Some score"
        XCTAssertEqual(vc.scoreLabel?.text, "Some score")
    }
    
    // Helpers:
    
    private func makePlayerOneStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "PlayerOne", bundle: nil)
    }
    
    private func makePlayerTwoStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "PlayerTwo", bundle: nil)
    }
    
    private func makePlayerScoreViewController(storyboard: UIStoryboard) -> PlayerScoreViewController {
        let vc = storyboard.instantiateInitialViewController() as! PlayerScoreViewController
        _ = vc.view
        return vc
    }
    
    
}

