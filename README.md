# RhProcessedDataViewModel

[![CI Status](https://img.shields.io/travis/SooHwanCho/RhProcessedDataViewModel.svg?style=flat)](https://travis-ci.org/SooHwanCho/RhProcessedDataViewModel)
[![Version](https://img.shields.io/cocoapods/v/RhProcessedDataViewModel.svg?style=flat)](https://cocoapods.org/pods/RhProcessedDataViewModel)
[![License](https://img.shields.io/cocoapods/l/RhProcessedDataViewModel.svg?style=flat)](https://cocoapods.org/pods/RhProcessedDataViewModel)
[![Platform](https://img.shields.io/cocoapods/p/RhProcessedDataViewModel.svg?style=flat)](https://cocoapods.org/pods/RhProcessedDataViewModel)

# Category 
    Simple MVVM implementation for iOS App
# Description
    You can easily make simple application with MVVM. Just Make View and Command, and bind with ViewModel!

# Feature
    1. Getting data from URL
    2. Caching data request, reduce networking
    3. Process Data using command object
    4. ViewModel with Relay
    5. Two Relay for item and request result(success, fail)
     
# Module Structure

![ModuleStructure](/img/ModuleStructure.png)

## How To Use
    - Override 'ProcessingCommand' class. This Class Should have a business logic in 'execute()' method
    - Make 'ProcessedDataViewModel' class instance, and bind relays
    - provide command to viewModel to load and process data.
## Dependency
    - RxSwift (>=5)
    - RxRelay (>=5)
## Installation

RhProcessedDataViewModel is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'RhProcessedDataViewModel'
```

## Author

SooHwanCho, chh0107@gmail.com

## License

RhProcessedDataViewModel is available under the MIT license. See the LICENSE file for more info.
