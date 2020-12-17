//  Created by Lohan Marques on 16/12/20.

import UIKit

final class VideoQualityRouter {
 
    private var window: UIWindow?
    
    func present(in window: inout UIWindow?) {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let videoQualityVC = VideoQualityViewControllerBuilder().make(router: self)
        
        self.window?.rootViewController = videoQualityVC
        self.window?.makeKeyAndVisible()
        
        window = self.window
    }
}
