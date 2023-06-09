// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Team13_YUMYUM",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "Team13_YUMYUM",
            targets: ["AppModule"],
            bundleIdentifier: "AppleAcademy.Team13-YUMYUM",
            teamIdentifier: "B9U954AWHU",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .gamepad),
            accentColor: .presetColor(.blue),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)
