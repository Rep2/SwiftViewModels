import UIKit

extension String: TextViewModel {
    public func apply(to textField: UITextField) {
        guard textField.text != self else { return }

        textField.text = self
    }

    public func apply(to label: UILabel) {
        guard label.text != self else { return }

        label.text = self
    }
}
