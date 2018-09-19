import UIKit

public struct ButtonViewModel {
    public let viewViewModel: ViewViewModel?
    public let textViewModel: TextViewModel

    public let didTapCallback: (() -> Void)?

    public init(textViewModel: TextViewModel, viewViewModel: ViewViewModel? = nil, didTapCallback: (() -> Void)? = nil) {
        self.viewViewModel = viewViewModel
        self.textViewModel = textViewModel
        self.didTapCallback = didTapCallback
    }

    public func apply(toButton button: UIButton) {
        textViewModel.apply(to: button)
        viewViewModel?.apply(to: button)
    }
}
