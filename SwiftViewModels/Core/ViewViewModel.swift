import UIKit

public struct ViewViewModel {
    public let backgroundColor: UIColor?
    public let border: Border?
    public let cornerRadius: CGFloat?

    public init(backgroundColor: UIColor? = nil, border: Border? = nil, cornerRadius: CGFloat? = nil) {
        self.backgroundColor = backgroundColor
        self.border = border
        self.cornerRadius = cornerRadius
    }

    public func apply(toView view: UIView) {
        if view.backgroundColor != backgroundColor {
            view.backgroundColor = backgroundColor
        }

        border?.apply(toView: view)

        let unwrapedCornerRadius = (cornerRadius ?? 0)
        if view.layer.cornerRadius != unwrapedCornerRadius {
            view.layer.cornerRadius = unwrapedCornerRadius

            view.layer.masksToBounds = unwrapedCornerRadius > 0
        }
    }
}
