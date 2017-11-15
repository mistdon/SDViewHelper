# SDViewHelper

[![CI Status](http://img.shields.io/travis/momo13014/SDViewHelper.svg?style=flat)](https://travis-ci.org/momo13014/SDViewHelper)
[![Version](https://img.shields.io/cocoapods/v/SDViewHelper.svg?style=flat)](http://cocoapods.org/pods/SDViewHelper)
[![License](https://img.shields.io/cocoapods/l/SDViewHelper.svg?style=flat)](http://cocoapods.org/pods/SDViewHelper)
[![Platform](https://img.shields.io/cocoapods/p/SDViewHelper.svg?style=flat)](http://cocoapods.org/pods/SDViewHelper)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

1. UIViewController+VCLoader
```objective-C
// create with Storyboard (Please make sure you have setted storyboard ID)
UIViewController *vc = [UIViewController sd_viewController:@"SDLoaderTestViewController" arguments:@{@"type":@"hello"}];
// create with xib or hard code
UIViewController *vc = [UIViewController sd_viewController:@"SDSBLoaderViewController" inStoryboard:@"Main" arguments:@{@"flag":@(1)}];
```

## Requirements

## Installation

SDViewHelper is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
source 'https://github.com/CocoaPods/Specs'
source 'https://github.com/momo13014/Specs'

pod 'SDViewHelper'
```

## Author

momo13014, shendong13014@gmail.com

## License

SDViewHelper is available under the MIT license. See the LICENSE file for more info.

There are some useful category to develop quickly.

