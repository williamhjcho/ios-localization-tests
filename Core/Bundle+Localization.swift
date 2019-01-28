import Foundation

public enum SupportedLocalization: String {
    case base = "Base"
    case ptBR = "pt-BR"
}

public extension Bundle {
    func resourced(from localization: SupportedLocalization) -> Bundle {
        guard let path = self.path(forResource: localization.rawValue, ofType: "lproj"),
            let bundle = Bundle(path: path) else {
                assertionFailure("Could not load \(localization.rawValue) bundle")
                return self
        }
        return bundle
    }
}

