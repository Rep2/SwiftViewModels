import UIKit

public struct ButtonViewModel {
    public let viewViewModel: ViewViewModel
    public let textViewModel: TextViewModel

    public let didTapCallback: (() -> Void)?

    public init(textViewModel: TextViewModel, viewViewModel: ViewViewModel = ViewViewModel(), didTapCallback: (() -> Void)? = nil) {
        self.viewViewModel = viewViewModel
        self.textViewModel = textViewModel
        self.didTapCallback = didTapCallback
    }

    public func apply(toButton button: UIButton) {
        if let text = textViewModel.text, button.titleLabel?.text != text {
            button.setTitle(text, for: .normal)
        }

        if let textColor = textViewModel.textColor, button.titleColor(for: .normal) != textColor {
            button.setTitleColor(textColor, for: .normal)
        }

        if let font = textViewModel.font, button.titleLabel?.font != font {
            button.titleLabel?.font = font
        }

        viewViewModel.apply(toView: button)
    }
}
