import UIKit

public enum Border {
    case none
    case border(width: Float, color: UIColor)

    public func apply(toView view: UIView) {
        switch self {
        case .none:
            if view.layer.borderColor != nil {
                view.layer.borderColor = nil
            }

            if view.layer.borderWidth != 0 {
                view.layer.borderWidth = 0
            }
        case .border(let width, let color):
            if view.layer.borderColor != color.cgColor {
                view.layer.borderColor = color.cgColor
            }

            if view.layer.borderWidth != CGFloat(width) {
                view.layer.borderWidth = CGFloat(width)
            }
        }
    }
}
