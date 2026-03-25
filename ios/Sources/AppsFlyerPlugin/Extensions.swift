// swiftlint:disable all
//
//  Strings.swift
//  Plugin
//
//  Created by Paz Lavi  on 11/07/2021.

//

import Foundation
extension String {
    
    /// Create `Data` from hexadecimal string representation
    ///
    /// This creates a `Data` object from hex string. Note, if the string has any spaces or non-hex characters (e.g. starts with '<' and with a '>'), those are ignored and only hex characters are processed.
    ///
    /// - returns: Data represented by this hexadecimal string.
    
    var hexadecimalToData: Data? {
        var data = Data(capacity: count / 2)
        
        let regex = try! NSRegularExpression(pattern: "[0-9a-f]{1,2}", options: .caseInsensitive)
        regex.enumerateMatches(in: self, range: NSRange(startIndex..., in: self)) { match, _, _ in
            let byteString = (self as NSString).substring(with: match!.range)
            let num = UInt8(byteString, radix: 16)!
            data.append(num)
        }
        
        guard data.count > 0 else { return nil }
        
        return data
    }
}

extension Dictionary {
    var jsonStringRepresentation: String? {
        guard let theJSONData = try? JSONSerialization.data(withJSONObject: self,
                                                            options: []) else {
            return nil
        }

        return String(data: theJSONData, encoding: .utf8)
    }
}

extension Dictionary where Key == String, Value == Any {
    /// Converts dictionary values to JSON-safe types.
    /// Non-serializable objects (like NSError) are converted to their string description.
    func jsonSafeRepresentation() -> [String: Any] {
        var result: [String: Any] = [:]
        for (key, value) in self {
            if let dict = value as? [String: Any] {
                result[key] = dict.jsonSafeRepresentation()
            } else if let array = value as? [Any] {
                result[key] = array.map { item -> Any in
                    if let dict = item as? [String: Any] {
                        return dict.jsonSafeRepresentation()
                    } else if JSONSerialization.isValidJSONObject([item]) {
                        return item
                    } else {
                        return "\(item)"
                    }
                }
            } else if JSONSerialization.isValidJSONObject([value]) {
                result[key] = value
            } else {
                // Convert non-serializable objects (NSError, etc.) to string
                result[key] = "\(value)"
            }
        }
        return result
    }
}

extension Notification.Name{
    public static let appsflyerBridge = Notification.Name(AppsFlyerConstants.AF_BRIDGE_SET)

}
