//
//  NotificationKey.swift
//  PIALibrary
//
//  Created by Davide De Rosa on 10/23/17.
//  Copyright © 2017 London Trust Media. All rights reserved.
//

import Foundation

/// Strongly typed, extensible `struct` for storing entries into the `Notification.userInfo` map.
public struct NotificationKey: Hashable {
    static let products = NotificationKey("ProductsKey")
    
    /// An `UserAccount` object.
    public static let user = NotificationKey("UserKey")
    
    /// An `AccountInfo` object (optional).
    public static let accountInfo = NotificationKey("AccountInfoKey")

    /// A `[Server]` object.
    public static let servers = NotificationKey("ServersKey")
    
    /// An `Error` object (optional).
    public static let error = NotificationKey("ErrorKey")
    
    private let string: String

    /**
     Default initializer.
     
     - Parameter string: The hashable `String` value of the key
     */
    public init(_ string: String) {
        self.string = string
    }
    
    // MARK: Hashable
    
    /// :nodoc:
    public static func ==(lhs: NotificationKey, rhs: NotificationKey) -> Bool {
        return (lhs.string == rhs.string)
    }
    
    /// :nodoc:
    public var hashValue: Int {
        return string.hashValue
    }
}

extension Macros {

    /**
     Posts a notification with an optional `NotificationKey`-based `userInfo`.
 
     - Parameter name: The name of the notification.
     - Parameter userInfo: The `userInfo` to forward for `Notification` creation.
     */
    public static func postNotification(_ name: Notification.Name, _ userInfo: [NotificationKey: Any]? = nil) {
        NotificationCenter.default.post(name: name, object: nil, userInfo: userInfo)
    }
    
    /**
     Posts a notification with an optional `Error`, later referenced through `NotificationKey.error`.
     
     - Parameter name: The name of the notification.
     - Parameter error: The `Error` to attach.
     */
    public static func postNotification(_ name: Notification.Name, _ error: Error?) {
        guard let error = error else {
            postNotification(name)
            return
        }
        postNotification(name, [.error: error])
    }
}

extension Notification {

    /**
     Returns a strongly typed entry from `userInfo`.
     
     - Parameter key: The `NotificationKey` key.
     - Returns: An object of inferred type `T`.
     */
    public func userInfo<T>(for key: NotificationKey) -> T {
        guard let info = userInfo else {
            fatalError("No userInfo attached")
        }
        guard let entry = info[key] else {
            fatalError("No userInfo entry with key '\(key)'")
        }
        guard let typedEntry = entry as? T else {
            fatalError("Type mismatch (\(type(of: entry)) != \(T.self))")
        }
        return typedEntry
    }

    /**
     Optional version of `userInfo(for:)`.
     
     - Parameter key: The `NotificationKey` key.
     - Returns: An object of inferred type `T` or `nil`.
     */
    public func optionalUserInfo<T>(for key: NotificationKey) -> T? {
        guard let info = userInfo, let entry = info[key], let typedEntry = entry as? T else {
            return nil
        }
        return typedEntry
    }
}
