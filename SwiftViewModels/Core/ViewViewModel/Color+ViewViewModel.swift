import UIKit

extension UIColor: ViewViewModel {
    public func apply(to view: UIView) {
        if view.backgroundColor != self {
            view.backgroundColor = self
        }
    }
}
