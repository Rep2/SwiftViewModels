import UIKit

struct TextViewModel {
    var text: String?
    let textColor: UIColor
    let font: UIFont

    init(text: String?, textColor: UIColor = .black, font: UIFont = UIFont.systemFont(ofSize: 15)) {
        self.text = text
        self.textColor = textColor
        self.font = font
    }

    func apply(toLabel label: UILabel) {
        if label.text != text {
            label.text = text
        }

        if label.textColor != textColor {
            label.textColor = textColor
        }

        if label.font != font {
            label.font = font
        }
    }
}
