// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "CAtk",
    products: [
        .library(name: "CAtk",
            targets: ["CAtk"])
    ],
    targets: [
        .systemLibrary(
            name: "CAtk",
            pkgConfig: "atk gio-unix-2.0 glib-2.0",
            providers: [
                .brew(["atk", "glib", "glib-networking", "gobject-introspection"]),
                .apt(["libatk1.0-dev", "libglib2.0-dev", "glib-networking", "gobject-introspection", "libgirepository1.0-dev"])
            ]
        )
    ],
    swiftLanguageVersions: [
        .v4_2,
        .version("5")
    ]
)
