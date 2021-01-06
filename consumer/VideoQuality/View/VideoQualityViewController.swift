//  Created by Lohan Marques on 16/12/20.

import UIKit
import VideoQuality

class VideoQualityViewController: UIViewController {
    
    @IBOutlet weak var selectedOption: UILabel!
    var presenter: VideoQualityPresenterInput?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Qualidade do Vídeo"
        self.view.backgroundColor = .white
        
        presenter?.load()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    @IBAction func changeQuality(_ sender: Any) {
        guard let videoQuality = VideoQualityType.allCases.randomElement() else { return }
        print(videoQuality)
        
        presenter?.didSelect(with: videoQuality)
    }
}

extension VideoQualityViewController: VideoQualityContractOutput {
    func didChangeVideoQuality(new type: VideoQualityType) {
        self.selectedOption.text = type.rawValue
    }
}
