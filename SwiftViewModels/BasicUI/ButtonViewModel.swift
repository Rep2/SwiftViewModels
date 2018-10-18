import UIKit

protocol ButtonViewModel {
    func apply(to button: UIButton)
}

extension Array: ButtonViewModel {
    public func apply(to button: UIButton) {
        self.forEach {
            guard let viewModel = $0 as? ButtonViewModel else { return }

            viewModel.apply(to: button)
        }
    }
}

extension String: ButtonViewModel {
    func apply(to button: UIButton) {
        button.setTitle(self, for: .normal)
    }
}

extension Border: ButtonViewModel {
    public func apply(to button: UIButton) {
        self.apply(to: button as UIView)
    }
}

extension UIColor: ButtonViewModel {
    public func apply(to button: UIButton) {
        self.apply(to: button as UIView)
    }
}

extension CornerRadius: ButtonViewModel {
    public func apply(to button: UIButton) {
        self.apply(to: button as UIView)
    }
}

struct CustomButtonViewModel: ButtonViewModel {
    var applyCallback: (UIButton) -> Void

    func apply(to button: UIButton) {
        applyCallback(button)
    }
}
