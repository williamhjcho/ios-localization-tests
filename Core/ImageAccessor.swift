import Foundation

public protocol ImageAccessor {
    static func image(named: String, in: Bundle) -> UIImage
}

public extension ImageAccessor {
    static func image(named name: String, in bundle: Bundle) -> UIImage {
        guard let image = UIImage(named: name, in: bundle, compatibleWith: nil) else {
            assertionFailure("Could not load image \(name) in \(bundle.bundlePath)")
            return UIImage()
        }
        return image
    }
}

public extension ImageAccessor where Self: BundleProvider {
    static func image(named name: String) -> UIImage {
        return image(named: name, in: bundle)
    }
}
