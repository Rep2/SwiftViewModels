import UIKit

extension NSAttributedString: TextViewModel {
    public func apply(to textField: UITextField) {
        textField.attributedText = self
    }

    public func apply(to label: UILabel) {
        label.attributedText = self
    }

    public func apply(to button: UIButton) {
        button.setAttributedTitle(self, for: .normal)
    }
}
