
import UIKit

final class TabbarController: UITabBarController {
    
    // MARK: - Properties
    
    var feedNavigationController : UINavigationController!
    var profileNavigationController : UINavigationController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        feedNavigationController = UINavigationController.init(rootViewController: FeedViewController())
        profileNavigationController = UINavigationController.init(rootViewController: LogInViewController())
        
        self.viewControllers = [
            feedNavigationController,
            profileNavigationController
        ]
        
        feedNavigationController.tabBarItem = UITabBarItem(
            title: "Лента",
            image: UIImage(systemName: "newspaper"),
            tag: 0)
        profileNavigationController.tabBarItem = UITabBarItem(
            title: "Профиль",
            image: UIImage(systemName: "person"),
            tag: 1)
    }
    
}
