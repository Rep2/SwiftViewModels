import UIKit

struct ImageViewModel {
    let image: UIImage?
    let viewViewModel: ViewViewModel

    init(image: UIImage?, viewViewModel: ViewViewModel) {
        self.image = image
        self.viewViewModel = viewViewModel
    }

    func apply(toImageView imageView: UIImageView) {
        if imageView.image != image {
            imageView.image = image
        }

        viewViewModel.apply(toView: imageView)
    }
}
