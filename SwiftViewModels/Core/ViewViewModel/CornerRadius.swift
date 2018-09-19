import UIKit

struct CornerRadius {
    let radius: CGFloat
}

extension CornerRadius: ViewViewModel {
    func apply(to view: UIView) {
        if view.layer.cornerRadius != radius {
            view.layer.cornerRadius = radius
            view.layer.masksToBounds = radius != 0
        }
    }
}
