# Nexmo-OneHack

## Xcode setup

N.B.: don't install it from the App Store.

- Create your Apple ID [here](https://appleid.apple.com/account#!&page=create) (you can signup with your Vonage email).
- Download `Xcode_11.5.xip` [here](https://developer.apple.com/services-account/download?path=/Developer_Tools/Xcode_11.5/Xcode_11.5.xip) (Apple ID needed).
- Double-click on it to extract `Xcode.app`.
- Rename `Xcode.app` to `Xcode_11_5.app` and move it to your `Applications` folder.
- Run `Xcode_11_5.app` and install "additional required components" when prompted (first time only).

## Cocoapods

Cocoapods is the package manager we use to distribute the iOS SDK.

Install it by executing: `gem install cocoapods`.

## Project setup

- Clone/fork the project.
- Run `pod install`.
- Open `NexmoOneHack.xcworkspace` with Xcode.
- Update `ViewController`'s
  - `npeName`,
  - `rs256PrivateKey` (e.g.: `"-----BEGIN PRIVATE KEY-----\nABC...XYZ\n-----END PRIVATE KEY-----\n"`),
  - `applicationId` and
  - `username`.
- Run the app.

