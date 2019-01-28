import Foundation

private final class _LocalizationClass {}

public extension Bundle {
    static let core = Bundle(for: _LocalizationClass.self)
}

public protocol CoreBundleLocalized: BundleProvider {}
public extension CoreBundleLocalized {
    static var bundle: Bundle { return Bundle.core }
}

public protocol CoreBundleLocaleLocalized: BundleProvider {}
public extension CoreBundleLocaleLocalized {
    static var bundle: Bundle { return Bundle.core.resourced(from: AppSettings.localization) }
}
