//
//  DetailViewController.swift
//  SimpsonsBook
//
//  Created by Caner Ağkaya on 10.02.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    var selectedSimpson : Simpsons?

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = selectedSimpson?.image
        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
       
    }
    

}
