import UIKit

public struct Border {
    public let width: Float
    public let color: UIColor
}

extension Border: ViewViewModel {
    public func apply(to view: UIView) {
        if view.layer.borderColor != color.cgColor {
            view.layer.borderColor = color.cgColor
        }

        if view.layer.borderWidth != CGFloat(width) {
            view.layer.borderWidth = CGFloat(width)
        }
    }
}
