import Foundation

public protocol LocalizedStringAccessor {
    static func string(key: String, table: String, in: Bundle) -> String
}

public extension LocalizedStringAccessor {
    static func string(key: String, table: String, in bundle: Bundle) -> String {
        let notFoundIdentifier = "🚨" //A non-printable character
        let result = bundle.localizedString(forKey: key, value: notFoundIdentifier, table: table)
        if result == notFoundIdentifier {
            assertionFailure("Could not find string with key \(key)")
            return key
        }
        return result
    }

    static func string(key: String, table: String, in bundle: Bundle, arguments: [CVarArg]) -> String {
        let format = string(key: key, table: table, in: bundle)
        return String(format: format, arguments: arguments)
    }

    static func string(key: String, table: String, in bundle: Bundle, arguments: CVarArg...) -> String {
        return string(key: key, table: table, in: bundle, arguments: arguments)
    }
}

public extension LocalizedStringAccessor where Self: BundleProvider {
    static func string(key: String, table: String) -> String {
        return string(key: key, table: table, in: bundle)
    }

    static func string(key: String, table: String, arguments: [CVarArg]) -> String {
        return string(key: key, table: table, in: bundle, arguments: arguments)
    }

    static func string(key: String, table: String, arguments: CVarArg...) -> String {
        return string(key: key, table: table, in: bundle, arguments: arguments)
    }
}
