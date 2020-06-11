import UIKit
import NexmoClient

final class ViewController: UIViewController {

    private let userToken = ""

    @IBOutlet weak var connectionStatusLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        connectionStatusLabel.text = "-"
    }

    @IBAction func onLoginButtonTouchUpInside(_ sender: UIButton) {
//        NXMClient.setConfiguration(NXMClientConfig(...))
        NXMClient.shared.setDelegate(self)

        NXMClient.shared.login(withAuthToken: userToken)
    }
}

extension ViewController: NXMClientDelegate {

    func client(_ client: NXMClient, didChange status: NXMConnectionStatus, reason: NXMConnectionStatusReason) {
        let connectionStatus: String
        switch status {
        case .disconnected: connectionStatus = "Disconnected"
        case .connecting:   connectionStatus = "Connecting"
        case .connected:    connectionStatus = "Connected"
        @unknown default:   connectionStatus = "Unknown NXMConnectionStatus"
        }
        updateConnectionStatusLabel(connectionStatus)
    }

    func client(_ client: NXMClient, didReceiveError error: Error) { }

    private func updateConnectionStatusLabel(_ text: String) {
        DispatchQueue.main.async { [weak self] in
            self?.connectionStatusLabel.text = text
        }
    }
}
