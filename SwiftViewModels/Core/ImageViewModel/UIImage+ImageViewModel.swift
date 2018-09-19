import UIKit

extension UIImage: ImageViewModel {
    public func apply(to imageView: UIImageView) {
        guard imageView.image != self else { return }

        imageView.image = self
    }
}
