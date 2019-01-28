import UIKit
import Core

final class ViewController: UIViewController {
    @IBOutlet weak var deviceLabel: UILabel!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!

    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        deviceLabel.text = ["(DEVICE)", CoreStrings.deviceLabel, MainStrings.deviceLabel]
            .joined(separator: "\n")

        AppSettings.localization = .ptBR
        secondLabel.text = ["(PT_BR)", CoreStrings.label, MainStrings.label, MainStrings.value(amount: 999)]
            .joined(separator: "\n")
        firstImageView.image = CoreImages.iconChat

        AppSettings.localization = .base
        firstLabel.text = ["(BASE)", CoreStrings.label, MainStrings.label, MainStrings.value(amount: 999)]
            .joined(separator: "\n")
        secondImageView.image = MainImages.iconMail
    }
}
