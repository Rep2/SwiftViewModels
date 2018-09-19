import UIKit

extension String: TextViewModel {
    public func apply(to textField: UITextField) {
        textField.text = self
    }

    public func apply(to label: UILabel) {
        label.text = self
    }

    public func apply(to button: UIButton) {
        button.setTitle(self, for: .normal)
    }
}
