//
//  HomeViewController.swift
//  lesson4.6.2
//
//  Created by Javlonbek on 20/01/22.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var items: Array<Post> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
    }

    func initViews() {
        tableView.dataSource = self
        tableView.delegate = self
        addNavigationBar()
        
        items.append(Post(name: "javlonbek", logo: "myLogo", time: "few minutes", content: "thank you for help in increasing content views", image: "iphone"))
        items.append(Post(name: "javlonbek", logo: "myLogo", time: "few minutes", content: "thank you for help in increasing my contents", image: "iphone"))
    }
    
    func addNavigationBar () {
        title = "Home"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        cell.nameLabel.text = item.name
        cell.logoImageView.image = UIImage(named: item.logo)
        cell.timeLabel.text = item.time
        cell.contentLabel.text = item.content
        cell.mainImageView.image = UIImage(named: item.image)
        
        return cell
    }

}
