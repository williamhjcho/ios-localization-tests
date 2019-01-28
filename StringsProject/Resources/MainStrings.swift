import Core
import Foundation

enum MainStrings: LocalizedStringAccessor, MainBundleLocaleLocalized {
    static let table = "Main"

    static var label: String {
        return string(key: "TXT_LABEL", table: table)
    }

    static func value(amount: Int) -> String {
        return string(key: "TXT_VALUE", table: table, arguments: amount)
    }

    static var deviceLabel: String {
        return Bundle.main.localizedString(forKey: "TXT_LABEL", value: nil, table: table)
    }
}
