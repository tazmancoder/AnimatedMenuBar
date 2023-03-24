
![ios](https://img.shields.io/badge/iOS-16-blue)

----

> This package contains all the code to be able to add a custom animated
menu bar to your application.

----

# AnimatedMenuBar

## Features

-   Animated Menu Bar
-   Correctly displays on your view

## Example

```swift
@State private var selectedIndex = 0

var body: some View {
    AnimatedMenuBar(selectedIndex: $selectedIndex)
}
```

## Installation

The code is packaged as a framework. You can install manually (by copying the files in the `Sources` directory) or using Swift Package Manager (**preferred**)

### Dependency to another SPM
To install using Swift Package Manager, add this to the `dependencies` section of your `Package.swift` file:
`.package(url: "https://github.com/tazmancoder/AnimatedMenuBar.git", .upToNextMinor(from: "1.0.0"))`

### Xcode project
To install this into your Xcode project, goto your project folder, tap Package Dependencies, under Packages click the plus button and enter following in the search bar: `https://github.com/tazmancoder/AnimatedMenuBar.git`. Set `Dependency Rule` to `Up to Next Major Version` then tap `Add Package` button. Thats it this package will then be installed and ready to use.

> Note: The package requires iOS v16+


