// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  internal enum Button {
    internal enum Start {
      /// Tap to star
      internal static let title = L10n.tr("Localizable", "button.start.title", fallback: "Tap to star")
    }
  }
  internal enum Dashboard {
    internal enum Measure {
      /// Take a measurement to get an assessment of your body's readiness for the upcoming day
      internal static let mainText = L10n.tr("Localizable", "dashboard.measure.mainText", fallback: "Take a measurement to get an assessment of your body's readiness for the upcoming day")
      /// How are you feeling today?
      internal static let subtitle = L10n.tr("Localizable", "dashboard.measure.subtitle", fallback: "How are you feeling today?")
      /// Measure dashboard
      internal static let title = L10n.tr("Localizable", "dashboard.measure.title", fallback: "Measure dashboard")
    }
  }
  internal enum NavigationBar {
    internal enum Health {
      /// Health
      internal static let title = L10n.tr("Localizable", "navigationBar.health.title", fallback: "Health")
    }
  }
  internal enum TabBar {
    internal enum History {
      /// History
      internal static let title = L10n.tr("Localizable", "tabBar.history.title", fallback: "History")
    }
    internal enum Home {
      /// Localizable.strings
      ///   HeartRateMonitorApp
      /// 
      ///   Created by Kirill Manuilenko on 29.11.23.
      internal static let title = L10n.tr("Localizable", "tabBar.home.title", fallback: "Home")
    }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

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
