//
//  AccountInfo.swift
//  PIALibrary
//
//  Created by Davide De Rosa on 10/1/17.
//  Copyright © 2017 London Trust Media. All rights reserved.
//

import Foundation

/// The information associated with a `Credentials`.
public struct AccountInfo {

    /// The linked email address if any.
    public internal(set) var email: String?

    /// The currently subscribed `Plan`.
    public let plan: Plan
    
    /// Returns `true` if the account is eligible for renewal.
    ///
    /// - Seealso: `AccountProvider.renew(...)`
    public let isRenewable: Bool
    
    /// Returns `true` if the subscription is recurring (auto-renewable).
    public let isRecurring: Bool
    
    /// The date by when the account is due to expire.
    public let expirationDate: Date
    
    /// Returns `true` if the account has expired.
    public var isExpired: Bool {
        return (expirationDate.timeIntervalSinceNow < 0)
    }
    
    /// Returns the `DateComponents` before `expirationDate`.
    public var dateComponentsBeforeExpiration: DateComponents {
        return Calendar.current.dateComponents([.day, .hour], from: Date(), to: expirationDate)
    }
    
    /**
     Returns `true` if the account is about to expire. The consumer should present
     an expiration alert and provide the user with a way to renew his account.
     */
    public let shouldPresentExpirationAlert: Bool

    /// Returns the URL to which a non-renewable subscription should be redirected.
    public let renewUrl: URL?
    
    func with(email: String) -> AccountInfo {
        var newInfo = self // copied (struct)
        newInfo.email = email
        return newInfo
    }
    
    /// Return the Human Readable Date for the expirationDate var.
    /// - Parameters:
    /// locale: The locale to format the date, by default will use the locale of the device
    public func humanReadableExpirationDate(usingLocale locale: Locale = Locale.current) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        dateFormatter.locale = locale
        return dateFormatter.string(from: self.expirationDate)
    }
}
