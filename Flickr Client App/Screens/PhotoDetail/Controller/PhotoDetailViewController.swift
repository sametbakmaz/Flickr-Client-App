//
//  PhotoDetailViewController.swift
//  Flickr Client App
//
//  Created by Abdulsamet Bakmaz on 30.01.2023.
//

import UIKit

class PhotoDetailViewController: UIViewController {
    
    var photo: Photo?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var ownerImageView: UIImageView!
    @IBOutlet weak var ownerNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    let networkManager = NetworkManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ownerNameLabel.text = photo?.ownername
        
        NetworkManager.shared.fetchImage(with: photo?.buddyIconURL) { data in
            self.ownerImageView.image = UIImage(data: data)
        }
        NetworkManager.shared.fetchImage(with: photo?.urlZ) { data in
            self.imageView.image = UIImage(data: data)
        }
        title = photo?.title
        descriptionLabel.text = photo?.photoDescription?.content
    }
}
