import UIKit

extension Array: ViewViewModel {
    public func apply(to view: UIView) {
        self.forEach {
            guard let viewModel = $0 as? ViewViewModel else { return }

            viewModel.apply(to: view)
        }
    }
}
