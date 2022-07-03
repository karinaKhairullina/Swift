//
//  CorrectNumberViewController.swift
//  2Homework
//
//  Created by Карина Хайрулина on 03.07.2022.
//

import UIKit

struct Contacts {
    let name: String
    let contact: String
    
}

class CorrectNumberViewController: UITableViewController {
    
    private var contacts: [Contacts] = [
        Contacts(name:"Karina Khairullina", contact: "89087786512"),
        Contacts(name:"Radmir Fazlyev", contact: "89087123984"),
        Contacts(name:"Emil Khairullin", contact: "89087527491"),
        Contacts(name:"Rumiya Salahova", contact: "89953618361"),
        Contacts(name:"Linar Usmanov", contact: "89065747819"),
        Contacts(name:"Ksenia Shvydko", contact: "89087657481"),
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "ContactsTableViewCell",
            for: indexPath
        ) as? ContactsTableViewCell else {return UITableViewCell() }
        
        
        cell.nameLabel.text = contacts[indexPath.row].name
        cell.contactLabel.text = contacts[indexPath.row].contact

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        90
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            
            print(contacts[indexPath.row])
            guard let InformationVC = storyboard?.instantiateViewController(withIdentifier: "InformationViewController") as? InformationViewController else { return }
        InformationVC.contactInform = contacts[indexPath.row]
            present(InformationVC, animated: true)
        }
    
    @IBAction func createButtonDidTap(_ sender: Any) {
            guard let createVC = storyboard?.instantiateViewController(withIdentifier: "CreateNewContactViewController") as? CreateNewContactViewController else { return }
        createVC.delegate = self
            present(createVC, animated: true)
        }

    
}

extension CorrectNumberViewController: CreateContactDelegate {
    func saveContact(contact: Contacts) {
        contacts.append(contact)
        tableView.reloadData()
    }
}


