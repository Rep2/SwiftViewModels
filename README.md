# SwiftViewModels

Basic view models that simplify usage and view model composition. 

## Usage

Use base view models or create compositions and present them on views.

```Swift
class ImageTitleTableViewCellViewModel {
    let titleViewModel: TextViewModel
    let imageViewModel: ImageViewModel

    init(titleViewModel: TextViewModel, imageViewModel: ImageViewModel) {
        self.titleViewModel = titleViewModel
        self.imageViewModel = imageViewModel
    }
}


class ImageTitleTableViewCell {
    func present(viewModel: ImageTitleTableViewCellViewModel) {
        viewModel.titleViewModel.apply(toLabel: titleLabel)
        viewModel.imageViewModel.apply(toImageView: customImageView)
    }
}
```

Every base view model implements ```apply``` method for intended view element. 

## Installation

### Carthage

```
github "Rep2/SwiftViewModels" ~> 0.2
```

### CocoaPods

```
pod 'SwiftViewModels', '~> 0.2'
```

## License

ReusableDataSource is available under the MIT license. See the LICENSE file for more info.
