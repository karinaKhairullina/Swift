//
//  CreateNewContactViewController.swift
//  2Homework
//
//  Created by Карина Хайрулина on 03.07.2022.
//

import UIKit

protocol CreateContactDelegate: AnyObject {
    func saveContact(contact: Contacts)
}

class CreateNewContactViewController: UIViewController{
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var contactTextField: UITextField!
    
    weak var delegate: CreateContactDelegate?

        override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    @IBAction func addButtonDidTap(_ sender: Any) {
        
        guard let name = nameTextField.text,
                      let contacts = contactTextField.text
                else { return }
                
                let contact = Contacts(name: name, contact: contacts)
                delegate?.saveContact(contact: contact)
                dismiss(animated: true )
                    }
}

