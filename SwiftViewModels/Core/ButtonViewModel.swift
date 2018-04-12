import UIKit

public struct ButtonViewModel {
    public let viewViewModel: ViewViewModel
    public let textViewModel: TextViewModel

    public let didTapCallback: (() -> Void)?

    public init(viewViewModel: ViewViewModel, textViewModel: TextViewModel, didTapCallback: (() -> Void)? = nil) {
        self.viewViewModel = viewViewModel
        self.textViewModel = textViewModel
        self.didTapCallback = didTapCallback
    }

    public func apply(toButton button: UIButton) {
        if button.titleLabel?.text != textViewModel.text {
            button.setTitle(textViewModel.text, for: .normal)
        }

        if button.titleColor(for: .normal) != textViewModel.textColor {
            button.setTitleColor(textViewModel.textColor, for: .normal)
        }

        if button.titleLabel?.font != textViewModel.font {
            button.titleLabel?.font = textViewModel.font
        }

        viewViewModel.apply(toView: button)
    }
}
