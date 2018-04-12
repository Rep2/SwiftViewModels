import UIKit

public struct ViewViewModel {
    public let backgroundColor: UIColor
    public let border: Border
    public let cornerRadius: CGFloat

    public init(backgroundColor: UIColor = .white, border: Border = .none, cornerRadius: CGFloat = 0) {
        self.backgroundColor = backgroundColor
        self.border = border
        self.cornerRadius = cornerRadius
    }

    public func apply(toView view: UIView) {
        if view.backgroundColor != backgroundColor {
            view.backgroundColor = backgroundColor
        }

        border.apply(toView: view)

        if view.layer.cornerRadius != cornerRadius {
            view.layer.cornerRadius = cornerRadius

            view.layer.masksToBounds = cornerRadius > 0
        }
    }
}
