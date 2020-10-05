//
//  ChatTableViewController.swift
//  Struo
//
//  Created by Luis Alberto Fernández Castro on 31/05/20.
//  Copyright © 2020 LF Coding. All rights reserved.
//

import UIKit

class ChatTableViewController: UITableViewController {
    
    var chatCategoryArray = ["Diet", "Lifestyle", "Art", "Education", "Health", "Fitness", "Music", "Economy"]
    var lastEditArray = ["Last edited: 4:24 pm","Last edited: 4:24 pm","Last edited: 4:24 pm","Last edited: 4:24 pm","Last edited: 4:24 pm","Last edited: 4:24 pm","Last edited: 4:24 pm","Last edited: 4:24 pm"]
    var imageArray = [#imageLiteral(resourceName: "Icon1"), #imageLiteral(resourceName: "Icon2"), #imageLiteral(resourceName: "Icon3"), #imageLiteral(resourceName: "Icon4"), #imageLiteral(resourceName: "Icon5"), #imageLiteral(resourceName: "Icon6"), #imageLiteral(resourceName: "Icon7"), #imageLiteral(resourceName: "Icon8")]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "ChatTableViewCell", bundle: nil), forCellReuseIdentifier: "chatTableViewCell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chatTableViewCell", for: indexPath) as! ChatTableViewCell
        cell.chatTitleLabel!.text = chatCategoryArray[indexPath.row]
        cell.chatLastEditLabel!.text = lastEditArray[indexPath.row]
        cell.chatImageView!.image = imageArray[indexPath.row]
        return cell
    }

}
