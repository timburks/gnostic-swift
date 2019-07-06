// swift-tools-version:5.0

// Copyright 2019 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import PackageDescription

let package = Package(
  name: "Gnostic",
  products: [
    .library(name: "Gnostic", targets: ["Gnostic"]),
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.5.0"),
  ],
  targets: [
    .target(name: "Gnostic",
            dependencies: ["SwiftProtobuf"],
            path: "Sources/Gnostic"),
    .target(name: "gnostic-swift-sample",
            dependencies: ["Gnostic"],
            path: "Sources/gnostic-swift-sample"),
    .target(name: "gnostic-swift-generator",
            dependencies: ["Gnostic"],
            path: "Sources/gnostic-swift-generator"),
    .target(name: "gnostic-lint-responses-swift",
            dependencies: ["Gnostic"],
            path: "Sources/gnostic-lint-responses-swift"),
  ]
)