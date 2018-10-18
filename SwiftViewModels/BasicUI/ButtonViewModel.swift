import UIKit

public protocol ButtonViewModel {
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
    public func apply(to button: UIButton) {
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

public struct CustomButtonViewModel: ButtonViewModel {
    public var applyCallback: (UIButton) -> Void

    public init(applyCallback: @escaping (UIButton) -> Void) {
        self.applyCallback = applyCallback
    }

    public func apply(to button: UIButton) {
        applyCallback(button)
    }
}
