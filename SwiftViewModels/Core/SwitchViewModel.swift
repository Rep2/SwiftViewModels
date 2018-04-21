import UIKit

public struct SwitchViewModel {
    public var isOn: Bool
    public let viewViewModel: ViewViewModel

    public init(isOn: Bool, viewViewModel: ViewViewModel = ViewViewModel()) {
        self.isOn = isOn
        self.viewViewModel = viewViewModel
    }

    public func apply(toSwitch switch: UISwitch) {
        if `switch`.isOn != isOn {
            `switch`.isOn = isOn
        }

        viewViewModel.apply(toView: `switch`)
    }
}
