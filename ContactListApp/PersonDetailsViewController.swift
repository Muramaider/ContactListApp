//
//  PersonDetailsViewController.swift
//  ContactListApp
//
//  Created by Aleksey Vinogradov on 23.08.2023.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    @IBOutlet private var phoneLabel: UILabel!
    @IBOutlet private var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.title
        phoneLabel.text = "Phone: \(person.phonenumber)"
        emailLabel.text = "Email: \(person.email)"
    }
}
