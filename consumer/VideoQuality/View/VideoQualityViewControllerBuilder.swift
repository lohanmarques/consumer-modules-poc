//  Created by Lohan Marques on 16/12/20.

import Foundation

final class VideoQualityViewControllerBuilder {
    
    func make(router: VideoQualityRouter?) -> VideoQualityViewController {
        let viewController = VideoQualityViewController(
            nibName: String(describing: VideoQualityViewController.self),
            bundle: nil
        )

        let presenter = VideoQualityPresenterBuilder.make(
            output: viewController,
            identifier: VideoQualityConstants.identifier,
            storage: UserDefaults.standard
        )

        viewController.presenter = presenter
        
        return viewController
    }
    
}
