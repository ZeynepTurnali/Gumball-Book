//
//  ImageViewController.swift
//  GumballBook
//
//  Created by testinium on 16.09.2020.
//  Copyright © 2020 testinium. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    var selectedGumballMember : Members?
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var names: UILabel!
    @IBOutlet weak var occupation: UILabel!
    @IBOutlet weak var species: UILabel!
    @IBOutlet weak var age: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = selectedGumballMember?.gumbalMemberImage
        names.text = selectedGumballMember?.gumbalMemberName
        occupation.text = selectedGumballMember?.gumbalMemberOccupation
        species.text = selectedGumballMember?.gumbalMemberSpecies
        age.text = selectedGumballMember?.gumbalMemberAge
        
    }
  

}
