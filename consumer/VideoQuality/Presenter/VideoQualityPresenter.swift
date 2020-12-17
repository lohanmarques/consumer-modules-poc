//  Created by Lohan Marques on 16/12/20.

import Foundation
import VideoQuality

final class VideoQualityPresenter: VideoQualityPresenterInput {

    private let interactor: VideoQualityContractInput
    weak var output: VideoQualityPresenterOutput?
    
    init(interactor: VideoQualityContractInput) {
        self.interactor = interactor
    }
    
    func load() {
        let videoQuality = interactor.fetchSelected()
        output?.showVideoQuality(with: videoQuality)
    }
    
    func didSelect(with option: VideoQualityType) {
        interactor.save(type: option)
    }
}

// MARK: OUTPUT
extension VideoQualityPresenter: VideoQualityContractOutput {

    func didChangeVideoQuality(new type: VideoQualityType) {
        output?.showVideoQuality(with: type)
    }
}
