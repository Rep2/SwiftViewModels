import UIKit

extension Array: ImageViewModel {
    public func apply(to imageView: UIImageView) {
        self.forEach {
            guard let viewModel = $0 as? ImageViewModel else { return }

            viewModel.apply(to: imageView)
        }
    }
}

extension Border: ImageViewModel {
    public func apply(to imageView: UIImageView) {
        self.apply(to: imageView as UIView)
    }
}

extension UIColor: ImageViewModel {
    public func apply(to imageView: UIImageView) {
        self.apply(to: imageView as UIView)
    }
}

extension CornerRadius: ImageViewModel {
    public func apply(to imageView: UIImageView) {
        self.apply(to: imageView as UIView)
    }
}
