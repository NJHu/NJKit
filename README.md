# NJKit

[![CI Status](https://img.shields.io/travis/njhu/NJKit.svg?style=flat)](https://travis-ci.org/njhu/NJKit)
[![Version](https://img.shields.io/cocoapods/v/NJKit.svg?style=flat)](https://cocoapods.org/pods/NJKit)
[![License](https://img.shields.io/cocoapods/l/NJKit.svg?style=flat)](https://cocoapods.org/pods/NJKit)
[![Platform](https://img.shields.io/cocoapods/p/NJKit.svg?style=flat)](https://cocoapods.org/pods/NJKit)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

NJKit is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'NJKit'
```

## Author

njhu, 64hp@163.com

## License

NJKit is available under the MIT license. See the LICENSE file for more info.


s.subspec 'Category' do |ss|
ss.source_files = 'NJKit/Classes/Category/*.{swift}'
ss.frameworks      = 'UIKit'
end

s.subspec 'Network' do |ss|
ss.source_files = 'NJKit/Classes/Network/*.{swift}'
ss.dependency 'Alamofire'
ss.frameworks      = 'UIKit'
end

s.subspec 'View' do |ss|
ss.source_files = 'NJKit/Classes/View/*.{swift}'
ss.frameworks      = 'UIKit'
ss.dependency 'MJRefresh'
end

s.subspec 'ViewController' do |ss|
ss.source_files = 'NJKit/Classes/ViewController/*.{swift}'
ss.frameworks      = 'UIKit'
ss.dependency 'MJRefresh'
ss.dependency 'NJKit/View'
end

s.subspec 'Xib' do |ss|
ss.source_files = 'NJKit/Xib/*.{xib}'
ss.frameworks      = 'UIKit'
end