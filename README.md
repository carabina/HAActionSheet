###HAActionSheet

Hello everyone,
You can think this pod as a dynamic action sheet for ios written in Swift 3.0.

## Requirements

- iOS 8.0+
- Xcode 8.1, 8.2, 8.3, and 9.0
- Swift 3.0, 3.1, 3.2, and 4.0

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate HAActionSheet into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
pod 'HAActionSheet',
end
```

Then, run the following command:

```bash
$ pod install
```

## Usage

```swift
import UIKit
import HAActionSheet
class ViewController: UIViewController {

let data = ["Apple",
"Orange",
"Banana",
"Berry"]

override func viewDidLoad() {
super.viewDidLoad()

let view = HAActionSheet(fromView: self.view, sourceData: data)
view.buttonCornerRadius  = 16
view.delegate = self
view.show()
} 
}

extension ViewController: HAActionSheetDelegate {
func didClickCancelButton(_ pickerView: HAActionSheet) {
print("Canceled")
}

func HAActionSheet(_ pickerView: HAActionSheet, didSelectRowAt index: Int) {
print("Selected item: \(data[index]) at index: \(index)")
}
}
```

## Options

```swift
internal var cancelButtonTitle: String
/// corner radius for cancel button, first and last button, default is 0.0
public var buttonCornerRadius: CGFloat

/// disable button show animation, default is true
public var disableAnimation: Bool

/// font for button titles, default is system font
public var titleFont: UIFont

/// cancel button title color, default is red
public var cancelButtonTitleColor: UIColor

/// cancel button background color, default is white
public var cancelButtonBackgroundColor: UIColor

/// button title color, default is blue
public var buttonTitleColor: UIColor

/// button background color, default is white
public var buttonBackgroundColor:UIColor

/// button seperator color, default is #EDEDEF
public var seperatorColor: UIColor
```

## TODO

- Fully iPad support
- More animation
