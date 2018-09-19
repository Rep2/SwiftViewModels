import UIKit

public protocol TextViewModel {
    func apply(to label: UILabel)
    func apply(to textField: UITextField)
    func apply(to button: UIButton)
}
