import UIKit

public struct SliderViewModel {
    public let minimum: Float
    public let maximum: Float
    public let current: Float
    public let viewViewModel: ViewViewModel?

    public let leftImage: UIImage?
    public let rightImage: UIImage?

    public init(minimum: Float, maximum: Float, current: Float, viewViewModel: ViewViewModel? = nil, leftImage: UIImage? = nil, rightImage: UIImage? = nil) {
        self.minimum = minimum
        self.maximum = maximum
        self.current = current

        self.viewViewModel = viewViewModel

        self.leftImage = leftImage
        self.rightImage = rightImage
    }

    public func apply(toSlider slider: UISlider) {
        slider.minimumValue = minimum
        slider.maximumValue = maximum
        slider.value = current

        viewViewModel?.apply(to: slider)

        slider.minimumValueImage = leftImage
        slider.maximumValueImage = rightImage
    }
}
