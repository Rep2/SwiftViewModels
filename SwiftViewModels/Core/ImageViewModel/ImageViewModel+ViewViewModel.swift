import UIKit

extension Array: ImageViewModel where Element: ImageViewModel {
    public func apply(to imageView: UIImageView) {
        self.forEach {
            $0.apply(to: imageView)
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
