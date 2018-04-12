import UIKit

struct ButtonViewModel {
    let viewViewModel: ViewViewModel
    let textViewModel: TextViewModel

    let didTapCallback: (() -> Void)?

    func apply(toButton button: UIButton) {
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
