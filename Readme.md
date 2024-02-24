# mvvm-core-data

`mvvm-core-data` is a simple iOS project created by SimpleSwiftUI, demonstrating the basics of implementing the Model-View-ViewModel (MVVM) architecture along with Core Data for persistent storage. This project is designed to help Swift and SwiftUI developers understand how to manage data within their iOS applications effectively.

## Features

- Basic MVVM Architecture implementation.
- Core Data integration for persistent storage.
- Read/Write operations with Core Data in a SwiftUI application.
- Usage of `ObservableObject` to update the UI with Core Data changes.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- macOS Monterey or later.
- Xcode 13 or later.
- Swift 5.5 or later.
- An understanding of Swift and SwiftUI.

## Installation

To install `mvvm-core-data`, follow these steps:

1. Clone the repository to your local machine:
2. Open the project in Xcode:
```bash
git clone https://github.com/SimpleSwiftUI/mvvm-core-data.git
cd mvvm-core-data
open mvvm-core-data.xcodeproj
```
Run the project in Xcode or on a simulator/device running iOS 16 or later.

## Usage

`mvvm-core-data` demonstrates the following:

- Fetching data from Core Data and displayed in a SwiftUI view.
- Adding new entities to Core Data and updated the UI reactively.
- Structuring an app using the MVVM architecture pattern in conjunction with Core Data.

Explore the `ViewModel`, `AnimalsView`, and `ButtonsView` to understand the interaction between SwiftUI views, the view model, and Core Data.

## License

This project is licensed under the MIT License.
