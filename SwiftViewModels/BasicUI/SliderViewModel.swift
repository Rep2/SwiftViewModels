import UIKit

public struct SliderViewModel {
    public let minimum: Float
    public let maximum: Float
    public let current: Float
    public let viewViewModel: ViewViewModel?

    public init(minimum: Float, maximum: Float, current: Float, viewViewModel: ViewViewModel? = nil) {
        self.minimum = minimum
        self.maximum = maximum
        self.current = current

        self.viewViewModel = viewViewModel
    }

    public func apply(toSlider slider: UISlider) {
        slider.minimumValue = minimum
        slider.maximumValue = maximum
        slider.value = current

        viewViewModel?.apply(to: slider)
    }
}
