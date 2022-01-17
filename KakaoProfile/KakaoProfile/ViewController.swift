//
//  ViewController.swift
//  KakaoProfile
//
//  Created by terry.yes on 2022/01/17.
//

import UIKit

class ViewController: UIViewController, ProfileDataDelegate {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = "JK"
        self.descriptionLabel.text = "카르페 디엠"
    }

    @IBAction func editButtonTouched(_ sender: Any) {
        self.nameLabel.textColor = UIColor.blue
        self.nameLabel.backgroundColor = UIColor.yellow
        self.nameLabel.alpha = 0.5
        self.descriptionLabel.text = "크루미션"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? EditViewController {
            destination.nameText = self.nameLabel.text
            destination.descriptionText = self.descriptionLabel.text
            destination.profileDataDelegate = self
        }
    }
    
    func updateProfile(name: String, description: String) {
        self.nameLabel.text = name
        self.descriptionLabel.text = description
    }
}

