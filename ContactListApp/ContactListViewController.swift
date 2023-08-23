//
//  ContactListViewController.swift
//  ContactListApp
//
//  Created by Aleksey Vinogradov on 22.08.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    private let personsList = Person.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

   
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let personDetailsVC = segue.destination as? PersonDetailsViewController
        personDetailsVC?.person = personsList[indexPath.row]
    }
}

    // MARK: - UITableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let contact = personsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = contact.title
        
        cell.contentConfiguration = content
        
        return cell
    }
    
}
