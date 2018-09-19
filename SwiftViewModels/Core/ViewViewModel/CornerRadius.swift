import UIKit

public struct CornerRadius {
    public let radius: CGFloat

    public init(radius: CGFloat) {
        self.radius = radius
    }
}

extension CornerRadius: ViewViewModel {
    public func apply(to view: UIView) {
        if view.layer.cornerRadius != radius {
            view.layer.cornerRadius = radius
            view.layer.masksToBounds = radius != 0
        }
    }
}
