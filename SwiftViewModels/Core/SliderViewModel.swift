import UIKit

struct SliderViewModel {
    let minimum: Float
    let maximum: Float
    let current: Float
    let viewViewModel: ViewViewModel

    init(minimum: Float, maximum: Float, current: Float, viewViewModel: ViewViewModel) {
        self.minimum = minimum
        self.maximum = maximum
        self.current = current

        self.viewViewModel = viewViewModel
    }

    func apply(toSlider slider: UISlider) {
        slider.minimumValue = minimum
        slider.maximumValue = maximum
        slider.value = current

        viewViewModel.apply(toView: slider)
    }
}
