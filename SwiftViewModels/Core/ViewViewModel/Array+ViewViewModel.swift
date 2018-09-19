import UIKit

extension Array: ViewViewModel where Element: ViewViewModel {
    public func apply(to view: UIView) {
        self.forEach {
            $0.apply(to: view)
        }
    }
}
