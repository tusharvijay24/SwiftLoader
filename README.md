# SwiftlyLoader

[![CI Status](https://img.shields.io/travis/tusharvijay24/SwiftlyLoader.svg?style=flat)](https://travis-ci.org/tusharvijay24/SwiftlyLoader)
[![Version](https://img.shields.io/cocoapods/v/SwiftlyLoader.svg?style=flat)](https://cocoapods.org/pods/SwiftlyLoader)
[![License](https://img.shields.io/cocoapods/l/SwiftlyLoader.svg?style=flat)](https://cocoapods.org/pods/SwiftlyLoader)
[![Platform](https://img.shields.io/cocoapods/p/SwiftlyLoader.svg?style=flat)](https://cocoapods.org/pods/SwiftlyLoader)

## 🚀 **Overview**
SwiftlyLoader is a lightweight, **customizable loading indicator** for iOS applications. It supports:
- **System Activity Indicator** (UIActivityIndicatorView)
- **Lottie Animations** for a modern and fluid experience.
- **Full customization** of background, size, animation speed, and colors.

---

## 📌 **Requirements**
- iOS 15.0+
- Swift 5.0+

---

## 📥 **Installation**

### **Using CocoaPods**
SwiftlyLoader is available through **CocoaPods**. To install, add the following line to your `Podfile`:

```ruby
pod 'SwiftlyLoader', :git => 'https://github.com/tusharvijay24/SwiftlyLoader.git'
```

Then run:
```sh
pod install
```

---

## 🛠 **Usage**
### **1️⃣ Import SwiftlyLoader**
```swift
import SwiftlyLoader
```

### **2️⃣ Show Loader (Default)**
```swift
SwiftlyLoader.shared.show()
```

### **3️⃣ Hide Loader**
```swift
SwiftlyLoader.shared.hide()
```

---

## 🎨 **Customization**
SwiftlyLoader supports **custom configuration** to style the loader.

### **Using System Activity Indicator**
```swift
let config = SwiftlyLoaderConfig(
    backgroundColor: .black.withAlphaComponent(0.6),
    indicatorColor: .white,
    indicatorSize: 80.0,
    cornerRadius: 10.0,
    loaderType: .systemIndicator(style: .large) // ✅ System Activity Indicator
)

SwiftlyLoader.shared.show(config: config)
```

### **Using Lottie Animation**
```swift
let config = SwiftlyLoaderConfig(
    backgroundColor: .black.withAlphaComponent(0.6),
    indicatorColor: .red,
    indicatorSize: 80.0,
    cornerRadius: 10.0,
    loaderType: .lottie(animation: .waveDots), // ✅ Lottie Animation
    animationSpeed: 1.5
)

SwiftlyLoader.shared.show(config: config)
```

---

## 🏗 **Example Project**
To run the **example project**, clone the repo and run:

```sh
git clone https://github.com/tusharvijay24/SwiftlyLoader.git
cd SwiftlyLoader/Example
pod install
open SwiftlyLoader.xcworkspace
```

---

## 👨‍💻 **Author**
Developed by **Tushar Vijayvargiya**  
📧 [tusharvijayvargiya24112000@gmail.com](mailto:tusharvijayvargiya24112000@gmail.com)  
📍 [GitHub](https://github.com/tusharvijay24)  

---

## 📄 **License**
SwiftlyLoader is available under the **MIT license**. See the [LICENSE](LICENSE) file for more info.
```
