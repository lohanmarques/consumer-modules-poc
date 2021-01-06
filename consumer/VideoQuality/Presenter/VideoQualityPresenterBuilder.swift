//  Created by Lohan Marques on 16/12/20.

import Foundation
import VideoQuality

final class VideoQualityPresenterBuilder {
    
    static func make(output: VideoQualityContractOutput, identifier: String, storage: UserDefaults) -> VideoQualityPresenter {
        let interactor = VideoQualityInteractorBuilder.make(output: output, identifier: identifier, storage: storage)
        let presenter = VideoQualityPresenter(interactor: interactor)

        return presenter
    }
}
