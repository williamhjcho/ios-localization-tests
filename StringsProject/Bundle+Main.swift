import Foundation
import Core

protocol MainBundleLocalized: BundleProvider {}
extension MainBundleLocalized {
    static var bundle: Bundle { return Bundle.main }
}

protocol MainBundleLocaleLocalized: BundleProvider {}
extension MainBundleLocaleLocalized {
    static var bundle: Bundle { return Bundle.main.resourced(from: AppSettings.localization) }
}
