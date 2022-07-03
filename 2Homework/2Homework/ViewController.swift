//
//  ViewController.swift
//  2Homework
//
//  Created by Карина Хайрулина on 02.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberTextField.placeholder = "Please, enter your phone number"
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTap(_ sender: Any) {
        
        guard let number = numberTextField.text else { return }
        
        if number.count == 11 &&
            number.hasPrefix("89087"){
            
            guard let CorrectNumberVC = storyboard?.instantiateViewController(withIdentifier: "CorrectNumberViewController") else {return}
            navigationController?.pushViewController(CorrectNumberVC, animated: true)
            
        } else {
            numberTextField.text = nil
            guard let BlockVC = storyboard?.instantiateViewController(withIdentifier: "BlockViewController") else {return}
            present(BlockVC, animated: true)
        
            }

}



//    @IBAction func showAlert(){
//        let alertController = UIAlertController(
//            title: "Attention!",
//            message: "Confirm action",
//            preferredStyle:.alert)
    
//        let actionOK = UIAlertAction(title: "OK", style: .default, handler: nil)

//        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel,
//            handler: nil)
    // Добавляем обе кнопки в Alert Controller
//        alertController.addAction(actionOK)
//        alertController.addAction(actionCancel)
//        self.present(alertController, animated: true, completion: nil)
    }
