# Getting Started with BitcoinUI

How to install BitcoinUI in your application.

## Installation

You can add BitcoinUI to an Xcode project by adding it as a package dependency.

  1. From the **File** menu, select **Swift Packages › Add Package Dependency…**
  2. Enter "https://github.com/reez/BitcoinUI" into the package repository URL text field
  3. Depending on how your project is structured:
      - If you have a single application target that needs access to the library, then add **BitcoinUI** directly to your application.
      - If you want to use this library from multiple targets you must create a shared framework that depends on **BitcoinUI** and then depend on that framework in all of your targets.

## Implementation

### Icons

- ``BitcoinImage(named:)``
- ``BitcoinUIImage(named:)``
