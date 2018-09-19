import UIKit

public struct SwitchViewModel {
    public var isOn: Bool
    public let viewViewModel: ViewViewModel?

    public let isOnValueChangedCallback: ((Bool) -> Void)?

    public init(isOn: Bool, viewViewModel: ViewViewModel? = nil, isOnValueChangedCallback: ((Bool) -> Void)? = nil) {
        self.isOn = isOn
        self.viewViewModel = viewViewModel
        self.isOnValueChangedCallback = isOnValueChangedCallback
    }

    public func apply(toSwitch switch: UISwitch) {
        if `switch`.isOn != isOn {
            `switch`.isOn = isOn
        }

        viewViewModel?.apply(to: `switch`)
    }
}
