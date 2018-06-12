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
        if let backgroundColor = backgroundColor, view.backgroundColor != backgroundColor {
            view.backgroundColor = backgroundColor
        }

        border?.apply(toView: view)

        if let cornerRadius = cornerRadius, view.layer.cornerRadius != cornerRadius {
            view.layer.cornerRadius = cornerRadius

            view.layer.masksToBounds = cornerRadius > 0
        }
    }
}
