![AMRAdapterBigo: Admost Mediation iOS SDK](https://www.admost.com/img/logo.svg)

[![Swift](https://img.shields.io/badge/Swift-5.0_6.0-orange?style=flat-square)](https://img.shields.io/badge/Swift-5.0_6.0-orange?style=flat-square)
[![Platforms](https://img.shields.io/badge/Platforms-iOS-yellowgreen?style=flat-square)](https://img.shields.io/badge/Platforms-iOS-yellowgreen?style=flat-square)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/AMRAdapterBigo.svg?style=flat-square)](https://img.shields.io/cocoapods/v/AMRAdapterBigo.svg)
[![SPM Compatible](https://img.shields.io/badge/SPM-compatible-brightgreen?style=flat-square)](https://img.shields.io/badge/SPM-compatible-brightgreen?style=flat-square)

# AMRAdapterBigo

BigoAds adapter for AMRSDK. Allows publishers to mediate BigoAds native, interstitial, rewarded video and splash ads in AMRSDK.

## Requirements

- iOS 12.0+
- Xcode 26+

## Installation

### Swift Package Manager

Add the following to your `Package.swift` dependencies:

```swift
https://github.com/admost/AMR-IOS-ADAPTER-BIGO.git
```

Then add `AMRAdapterBigo` to your target dependencies:

```swift
.product(name: "AMRAdapterBigo", package: "AMR-IOS-ADAPTER-BIGO")
```

Or in Xcode: **File → Add Package Dependencies** and enter the repository URL.

> **Note about BigoAds SDK and SPM:** Bigo does not publish an official Swift Package for `BigoADS`. This adapter ships a repackaged copy of the official `BigoADS.xcframework` as a binary release asset alongside the adapter. Adding this package via SPM pulls in the matching `BigoADS` version automatically — no extra steps required.

### CocoaPods

Add the following to your `Podfile`:

```ruby
pod 'AMRAdapterBigo'
```

Then run:

```sh
pod install
```

## License

Copyright 2016 Admost Mediation Limited. All rights reserved.

## Contact

- **Website:** [admost.com](http://www.admost.com/)
- **Email:** amr@admost.com
- **Documentation:** [admost.github.io/amrios](https://admost.github.io/amrios/)
