import UIKit

public struct ImageViewModel {
    public let image: UIImage?
    public let viewViewModel: ViewViewModel

    public init(image: UIImage?, viewViewModel: ViewViewModel = ViewViewModel()) {
        self.image = image
        self.viewViewModel = viewViewModel
    }

    public func apply(toImageView imageView: UIImageView) {
        if let image = image, imageView.image != image {
            imageView.image = image
        }

        viewViewModel.apply(toView: imageView)
    }
}
