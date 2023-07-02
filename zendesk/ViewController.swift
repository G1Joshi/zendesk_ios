import UIKit
import ChatSDK
import MessagingSDK
import SupportSDK
import AnswerBotSDK

class ViewController: UIViewController {

    @IBAction func pushChat(sender: AnyObject) {
        do {
            let messagingConfiguration = MessagingConfiguration()
            let answerBotEngine = try AnswerBotEngine.engine()
            let supportEngine = try SupportEngine.engine()
            let chatEngine = try ChatEngine.engine()
            let viewController = try Messaging.instance.buildUI(engines: [answerBotEngine, supportEngine, chatEngine], configs: [messagingConfiguration])
            self.navigationController?.pushViewController(viewController, animated: true)
        } catch {
            print("error")
        }
    }

}
