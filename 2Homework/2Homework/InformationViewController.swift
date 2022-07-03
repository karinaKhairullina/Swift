//
//  InformationViewController.swift
//  2Homework
//
//  Created by Карина Хайрулина on 03.07.2022.
//

import UIKit

class InformationViewController: UIViewController {
    
    @IBOutlet weak var nameInformationLabel: UILabel!
    @IBOutlet weak var numberInformationLabel: UILabel!
    
    var contactInform: Contacts?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let contactInform = contactInform else {
            return
        }

        nameInformationLabel.text = contactInform.name
        numberInformationLabel.text = contactInform.contact
        
    }
    

}
