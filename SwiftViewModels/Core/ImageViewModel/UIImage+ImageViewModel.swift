import UIKit

extension UIImage: ImageViewModel {
    public func apply(to imageView: UIImageView) {
        imageView.image = self
    }
}
