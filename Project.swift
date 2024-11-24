import ProjectDescription

let project = Project(
    name: "SampleFeatures",
    targets: [
        .target(
            name: "SampleFeatures",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.SampleFeatures",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["SampleFeatures/Sources/**"],
            resources: ["SampleFeatures/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "SampleFeaturesTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.SampleFeaturesTests",
            infoPlist: .default,
            sources: ["SampleFeatures/Tests/**"],
            resources: [],
            dependencies: [.target(name: "SampleFeatures")]
        ),
    ]
)
