//  Created by Lohan Marques on 16/12/20.

import Foundation
import VideoQuality

protocol VideoQualityPresenterInput {
    func load()
    func didSelect(with option: VideoQualityType)
}

protocol VideoQualityPresenterOutput: class {
    func showVideoQuality(with selectedOption: VideoQualityType)
}
