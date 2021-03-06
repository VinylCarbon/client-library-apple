// swiftlint:disable all
// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name
internal enum L10n {
  internal enum Signup {
    internal enum Failure {
      /// We're unable to create an account at this time. Please try again later. Reopening the app will re-attempt to create an account.
      internal static let message = L10n.tr("Signup", "failure.message")
      /// GO BACK
      internal static let submit = L10n.tr("Signup", "failure.submit")
      /// Account creation failed
      internal static let title = L10n.tr("Signup", "failure.title")
      /// Sign-up failed
      internal static let vcTitle = L10n.tr("Signup", "failure.vc_title")
      internal enum Redeem {
        internal enum Claimed {
          /// Looks like this card has already been claimed by another account. You can try entering a different PIN.
          internal static let message = L10n.tr("Signup", "failure.redeem.claimed.message")
          /// Card claimed already
          internal static let title = L10n.tr("Signup", "failure.redeem.claimed.title")
        }
        internal enum Invalid {
          /// Looks like you entered an invalid card PIN. Please try again.
          internal static let message = L10n.tr("Signup", "failure.redeem.invalid.message")
          /// Invalid card PIN
          internal static let title = L10n.tr("Signup", "failure.redeem.invalid.title")
        }
      }
    }
    internal enum InProgress {
      /// We're confirming your purchase with our system. It could take a moment so hang in there.
      internal static let message = L10n.tr("Signup", "in_progress.message")
      /// Confirm sign-up
      internal static let title = L10n.tr("Signup", "in_progress.title")
      internal enum Redeem {
        /// We're confirming your card PIN with our system. It could take a moment so hang in there.
        internal static let message = L10n.tr("Signup", "in_progress.redeem.message")
      }
    }
    internal enum Success {
      /// Thank you for signing up with us. We have sent your account username and password at your email address at %@
      internal static func messageFormat(_ p1: String) -> String {
        return L10n.tr("Signup", "success.message_format", p1)
      }
      /// GET STARTED
      internal static let submit = L10n.tr("Signup", "success.submit")
      /// Purchase complete
      internal static let title = L10n.tr("Signup", "success.title")
      internal enum Password {
        /// Password
        internal static let caption = L10n.tr("Signup", "success.password.caption")
      }
      internal enum Redeem {
        /// You will also receive an email shortly with your username and password.
        internal static let message = L10n.tr("Signup", "success.redeem.message")
        /// Completed!
        internal static let title = L10n.tr("Signup", "success.redeem.title")
      }
      internal enum Username {
        /// Username
        internal static let caption = L10n.tr("Signup", "success.username.caption")
      }
    }
    internal enum Unreachable {
      /// No internet connection found. Please confirm that you have an internet connection and hit retry below.\n\nYou can come back to the app later to finish the process.
      internal static let message = L10n.tr("Signup", "unreachable.message")
      /// TRY AGAIN
      internal static let submit = L10n.tr("Signup", "unreachable.submit")
      /// Whoops!
      internal static let title = L10n.tr("Signup", "unreachable.title")
      /// Error
      internal static let vcTitle = L10n.tr("Signup", "unreachable.vc_title")
    }
  }
  internal enum Ui {
    internal enum Global {
      /// Cancel
      internal static let cancel = L10n.tr("UI", "global.cancel")
      /// Close
      internal static let close = L10n.tr("UI", "global.close")
      /// OK
      internal static let ok = L10n.tr("UI", "global.ok")
      internal enum Version {
        /// Version %@ (%@)
        internal static func format(_ p1: String, _ p2: String) -> String {
          return L10n.tr("UI", "global.version.format", p1, p2)
        }
      }
    }
  }
  internal enum Welcome {
    internal enum Agreement {
      /// Signing up constitutes acceptance of the $1 and the $2.
      internal static let message = L10n.tr("Welcome", "agreement.message")
      internal enum Message {
        /// Privacy Policy
        internal static let privacy = L10n.tr("Welcome", "agreement.message.privacy")
        /// Terms of Service
        internal static let tos = L10n.tr("Welcome", "agreement.message.tos")
      }
    }
    internal enum Camera {
      internal enum Access {
        internal enum Denied {
          /// Enable camera access so you can scan QR codes to redeem a gift card.
          internal static let message = L10n.tr("Welcome", "camera.access.denied.message")
        }
        internal enum Error {
          /// Your device does not support scanning QR codes. Please use a device with a camera.
          internal static let message = L10n.tr("Welcome", "camera.access.error.message")
          /// Camera not available
          internal static let title = L10n.tr("Welcome", "camera.access.error.title")
        }
      }
    }
    internal enum Iap {
      internal enum Error {
        /// Error
        internal static let title = L10n.tr("Welcome", "iap.error.title")
        internal enum Message {
          /// Apple servers currently unavailable. Please try again later.
          internal static let unavailable = L10n.tr("Welcome", "iap.error.message.unavailable")
        }
      }
    }
    internal enum Login {
      /// LOGIN
      internal static let submit = L10n.tr("Welcome", "login.submit")
      /// Sign in to your account
      internal static let title = L10n.tr("Welcome", "login.title")
      internal enum Error {
        /// Too many failed login attempts with this username. Please try again later.
        internal static let throttled = L10n.tr("Welcome", "login.error.throttled")
        /// Log in
        internal static let title = L10n.tr("Welcome", "login.error.title")
        /// Your username or password is incorrect.
        internal static let unauthorized = L10n.tr("Welcome", "login.error.unauthorized")
        /// You must enter a username and password.
        internal static let validation = L10n.tr("Welcome", "login.error.validation")
      }
      internal enum Password {
        /// Password
        internal static let placeholder = L10n.tr("Welcome", "login.password.placeholder")
      }
      internal enum Purchase {
        /// Buy now
        internal static let button = L10n.tr("Welcome", "login.purchase.button")
        /// Don’t have an account?
        internal static let footer = L10n.tr("Welcome", "login.purchase.footer")
      }
      internal enum Redeem {
        /// Redeem now
        internal static let button = L10n.tr("Welcome", "login.redeem.button")
        /// Have a gift card or trial card?
        internal static let footer = L10n.tr("Welcome", "login.redeem.footer")
      }
      internal enum Restore {
        /// Couldn't get your plan?
        internal static let button = L10n.tr("Welcome", "login.restore.button")
      }
      internal enum Username {
        /// Username (p1234567)
        internal static let placeholder = L10n.tr("Welcome", "login.username.placeholder")
      }
    }
    internal enum Plan {
      /// Best value
      internal static let bestValue = L10n.tr("Welcome", "plan.best_value")
      /// %@/mo
      internal static func priceFormat(_ p1: String) -> String {
        return L10n.tr("Welcome", "plan.price_format", p1)
      }
      internal enum Accessibility {
        /// per month
        internal static let perMonth = L10n.tr("Welcome", "plan.accessibility.per_month")
      }
      internal enum Monthly {
        /// Monthly
        internal static let title = L10n.tr("Welcome", "plan.monthly.title")
      }
      internal enum Yearly {
        /// %@%@ per year
        internal static func detailFormat(_ p1: String, _ p2: String) -> String {
          return L10n.tr("Welcome", "plan.yearly.detail_format", p1, p2)
        }
        /// Yearly
        internal static let title = L10n.tr("Welcome", "plan.yearly.title")
      }
    }
    internal enum Purchase {
      /// BUY NOW
      internal static let submit = L10n.tr("Welcome", "purchase.submit")
      /// 7-day money back guarantee
      internal static let subtitle = L10n.tr("Welcome", "purchase.subtitle")
      /// Select a VPN plan
      internal static let title = L10n.tr("Welcome", "purchase.title")
      internal enum Email {
        /// Email address
        internal static let placeholder = L10n.tr("Welcome", "purchase.email.placeholder")
      }
      internal enum Error {
        /// Purchase
        internal static let title = L10n.tr("Welcome", "purchase.error.title")
        /// You must enter an email address.
        internal static let validation = L10n.tr("Welcome", "purchase.error.validation")
        internal enum Connectivity {
          /// We are unable to reach Private Internet Access. This may due to poor internet or our service is blocked in your country.
          internal static let description = L10n.tr("Welcome", "purchase.error.connectivity.description")
          /// Connection Failure
          internal static let title = L10n.tr("Welcome", "purchase.error.connectivity.title")
        }
      }
      internal enum Login {
        /// Sign in
        internal static let button = L10n.tr("Welcome", "purchase.login.button")
        /// Already have an account?
        internal static let footer = L10n.tr("Welcome", "purchase.login.footer")
      }
    }
    internal enum Redeem {
      /// SUBMIT
      internal static let submit = L10n.tr("Welcome", "redeem.submit")
      /// Type in your email address and the %lu digit PIN from your gift card or trial card below.
      internal static func subtitle(_ p1: Int) -> String {
        return L10n.tr("Welcome", "redeem.subtitle", p1)
      }
      /// Redeem gift card
      internal static let title = L10n.tr("Welcome", "redeem.title")
      internal enum Email {
        /// Email address
        internal static let placeholder = L10n.tr("Welcome", "redeem.email.placeholder")
      }
      internal enum Error {
        /// Code must be %lu numeric digits.
        internal static func code(_ p1: Int) -> String {
          return L10n.tr("Welcome", "redeem.error.code", p1)
        }
        /// Redeem
        internal static let title = L10n.tr("Welcome", "redeem.error.title")
        internal enum Qrcode {
          /// Invalid QR code sequence. Please try again.
          internal static let invalid = L10n.tr("Welcome", "redeem.error.qrcode.invalid")
        }
      }
    }
    internal enum Restore {
      /// CONFIRM
      internal static let submit = L10n.tr("Welcome", "restore.submit")
      /// If you purchased a plan through this app and didn't receive your credentials, you can send them again from here.\nYou will not be charged during this process.
      internal static let subtitle = L10n.tr("Welcome", "restore.subtitle")
      /// Restore uncredited purchase
      internal static let title = L10n.tr("Welcome", "restore.title")
      internal enum Email {
        /// Email address
        internal static let placeholder = L10n.tr("Welcome", "restore.email.placeholder")
      }
    }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = NSLocalizedString(key, tableName: table, bundle: Bundle(for: BundleToken.self), comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

private final class BundleToken {}
