//  Created by Lohan Marques on 16/12/20.

import Foundation

final class VideoQualityViewControllerBuilder {
    
    func make(router: VideoQualityRouter?) -> VideoQualityViewController {
        let presenter = VideoQualityPresenterBuilder.make(identifier: VideoQualityConstants.identifier,
                                                          storage: UserDefaults.standard)
        let viewController = VideoQualityViewController(nibName: String(describing: VideoQualityViewController.self),
                                                        bundle: nil)
        viewController.presenter = presenter
        presenter.output = viewController
        
        return viewController
    }
    
}
