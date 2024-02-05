// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif
#if canImport(SwiftUI)
  import SwiftUI
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ColorAsset.Color", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetColorTypeAlias = ColorAsset.Color
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum Asset {
  internal static let accentColor = ColorAsset(name: "AccentColor")
  internal enum Colors {
    internal static let appBlue = ColorAsset(name: "AppBlue")
    internal static let appBlueGradientFirstButton = ColorAsset(name: "AppBlueGradientFirstButton")
    internal static let appBlueGradientSecondButton = ColorAsset(name: "AppBlueGradientSecondButton")
    internal static let appBlueShadow = ColorAsset(name: "AppBlueShadow")
    internal static let appBlueWhiteGradientFirst = ColorAsset(name: "AppBlueWhiteGradientFirst")
    internal static let appBlueWhiteGradientSecond = ColorAsset(name: "AppBlueWhiteGradientSecond")
    internal static let appManatee = ColorAsset(name: "AppManatee")
    internal static let appMarengo = ColorAsset(name: "AppMarengo")
    internal static let appPaleBlue = ColorAsset(name: "AppPaleBlue")
    internal static let appRed = ColorAsset(name: "AppRed")
    internal static let appRedGradientFirstButton = ColorAsset(name: "AppRedGradientFirstButton")
    internal static let appRedGradientSecondButton = ColorAsset(name: "AppRedGradientSecondButton")
    internal static let appSlateGrey = ColorAsset(name: "AppSlateGrey")
    internal static let appVeryLightBlue = ColorAsset(name: "AppVeryLightBlue")
    internal static let appWhiteGradientFirst = ColorAsset(name: "AppWhiteGradientFirst")
    internal static let appWhiteGradientSecond = ColorAsset(name: "AppWhiteGradientSecond")
  }
  internal enum Images {
    internal static let appIconLaunchScreen = ImageAsset(name: "AppIconLaunchScreen")
    internal static let assessmentBackground = ImageAsset(name: "AssessmentBackground")
    internal static let assessmentIcon = ImageAsset(name: "AssessmentIcon")
    internal static let historyArrowIcon = ImageAsset(name: "HistoryArrowIcon")
    internal static let historyBackground = ImageAsset(name: "HistoryBackground")
    internal static let historyButton = ImageAsset(name: "HistoryButton")
    internal static let historyHeadlineIcon = ImageAsset(name: "HistoryHeadlineIcon")
    internal static let historyNoDataBackground = ImageAsset(name: "HistoryNoDataBackground")
    internal static let homeButton = ImageAsset(name: "HomeButton")
    internal static let informationButton = ImageAsset(name: "InformationButton")
    internal static let measureBackgound = ImageAsset(name: "MeasureBackgound")
    internal static let measureHeart = ImageAsset(name: "MeasureHeart")
    internal static let measurementAssessmentBackground = ImageAsset(name: "MeasurementAssessmentBackground")
    internal static let measurementiPhone = ImageAsset(name: "MeasurementiPhone")
    internal static let navBarBackButtonIcon = ImageAsset(name: "NavBarBackButtonIcon")
    internal static let navBarCloseButtonIcon = ImageAsset(name: "NavBarCloseButtonIcon")
    internal static let onboardingBackground = ImageAsset(name: "OnboardingBackground")
    internal static let onboardingStepOne = ImageAsset(name: "OnboardingStepOne")
    internal static let onboardingStepThree = ImageAsset(name: "OnboardingStepThree")
    internal static let onboardingStepTwo = ImageAsset(name: "OnboardingStepTwo")
    internal static let plusButton = ImageAsset(name: "PlusButton")
    internal static let popupAssessmentIcon = ImageAsset(name: "PopupAssessmentIcon")
    internal static let popupHRVIcon = ImageAsset(name: "PopupHRVIcon")
    internal static let popupPulseIcon = ImageAsset(name: "PopupPulseIcon")
    internal static let pulseLine = ImageAsset(name: "PulseLine")
    internal static let settingsArrowIcon = ImageAsset(name: "SettingsArrowIcon")
    internal static let settingsButton = ImageAsset(name: "SettingsButton")
    internal static let settingsContactUsIcon = ImageAsset(name: "SettingsContactUsIcon")
    internal static let settingsFAQIcon = ImageAsset(name: "SettingsFAQIcon")
    internal static let settingsPrivacyPolicyIcon = ImageAsset(name: "SettingsPrivacyPolicyIcon")
    internal static let settingsRateUsIcon = ImageAsset(name: "SettingsRateUsIcon")
    internal static let settingsShareThisAppIcon = ImageAsset(name: "SettingsShareThisAppIcon")
    internal static let settingsTermsOfUseIcon = ImageAsset(name: "SettingsTermsOfUseIcon")
    internal static let tapToStartButton = ImageAsset(name: "TapToStartButton")
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal final class ColorAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  internal private(set) lazy var color: Color = {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }()

  #if os(iOS) || os(tvOS)
  @available(iOS 11.0, tvOS 11.0, *)
  internal func color(compatibleWith traitCollection: UITraitCollection) -> Color {
    let bundle = BundleToken.bundle
    guard let color = Color(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  internal private(set) lazy var swiftUIColor: SwiftUI.Color = {
    SwiftUI.Color(asset: self)
  }()
  #endif

  fileprivate init(name: String) {
    self.name = name
  }
}

internal extension ColorAsset.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init?(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
internal extension SwiftUI.Color {
  init(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle)
  }
}
#endif

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Image = UIImage
  #endif

  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, macOS 10.7, *)
  internal var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }

  #if os(iOS) || os(tvOS)
  @available(iOS 8.0, tvOS 9.0, *)
  internal func image(compatibleWith traitCollection: UITraitCollection) -> Image {
    let bundle = BundleToken.bundle
    guard let result = Image(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  internal var swiftUIImage: SwiftUI.Image {
    SwiftUI.Image(asset: self)
  }
  #endif
}

internal extension ImageAsset.Image {
  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, *)
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init?(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
internal extension SwiftUI.Image {
  init(asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle)
  }

  init(asset: ImageAsset, label: Text) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle, label: label)
  }

  init(decorative asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(decorative: asset.name, bundle: bundle)
  }
}
#endif

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
