//
//  RecentPhotosTableViewController.swift
//  Flickr Client App
//
//  Created by Abdulsamet Bakmaz on 30.01.2023.
//

import UIKit

class RecentPhotosTableViewController: UITableViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PhotoTableViewCell
        cell.ownerImageView.backgroundColor = .darkGray
        cell.ownerNameLabel.text = "Owner Name"
        cell.photoImageView.backgroundColor = .gray
        cell.titleLabel.text = "Title Label"
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }

}

