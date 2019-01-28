import Foundation

public enum CoreStrings: LocalizedStringAccessor, CoreBundleLocaleLocalized {
    public static let table = "Core"

    public static var label: String {
        return string(key: "TXT_LABEL", table: table)
    }

    public static var deviceLabel: String {
        return Bundle.core.localizedString(forKey: "TXT_LABEL", value: nil, table: table)
    }
}
