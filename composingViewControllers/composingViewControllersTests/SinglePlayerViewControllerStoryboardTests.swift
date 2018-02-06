//
//  Copyright © 2018 Jørgen Eidem. All rights reserved.
//

import XCTest
@testable import composingViewControllers

class SinglePlayerViewControllerStoryboardTests: XCTestCase {
    
    let storyboard = UIStoryboard(name: "SinglePlayerGame", bundle: nil)
    
    func test_singlePlayerGameStoryboardInitialViewController_isSinglePlayerViewController() {
        XCTAssertTrue(storyboard.instantiateInitialViewController() is SinglePlayerViewController)
    }
    
    func test_singlePlayerGameStoryboard_setsUpPlayerForSinglePlayerViewController() {
        let vc = storyboard.instantiateInitialViewController() as! SinglePlayerViewController
        _ = vc.view
        
        XCTAssertNotNil(vc.player)
    }
}
