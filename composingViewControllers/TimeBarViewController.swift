//
//  Copyright © 2018 Jørgen Eidem. All rights reserved.
//

import UIKit

final class TimeBarViewController: UIViewController {
    
    @IBOutlet private weak var barView: UIView?
    
    var progress: Float = 1 {
        didSet { /* update bar frame */ }
    }
}

