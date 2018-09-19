import UIKit

extension NSAttributedString: TextViewModel {
    public func apply(to textField: UITextField) {
        guard textField.attributedText != self else { return }

        textField.attributedText = self
    }

    public func apply(to label: UILabel) {
        guard label.attributedText != self else { return }

        label.attributedText = self
    }

    public func apply(to button: UIButton) {
        guard button.attributedTitle(for: .normal) != self else { return }

        button.setAttributedTitle(self, for: .normal)
    }
}
