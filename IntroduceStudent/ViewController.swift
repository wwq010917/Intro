//
//  ViewController.swift
//  Intro
//
//  Created by Wenqiao Wang on 1/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var isMorePets: UISwitch!
    @IBOutlet weak var incrementPet: UIStepper!
    @IBOutlet weak var petsNumber: UILabel!
    @IBOutlet weak var Grade: UISegmentedControl!
    @IBOutlet weak var schoolName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var firstName: UITextField!
    @IBAction func stepperDidChange(_ sender: UIStepper) {
       
        petsNumber.text = "\(Int(sender.value))"
   }
    
    @IBAction func IntroduceTapped(_ sender: Any) {
        let year = Grade.titleForSegment(at: Grade.selectedSegmentIndex)
        let introduction = "My name is \(firstName.text!) \(lastName.text!) and I attend \(schoolName.text!).I am currently in my \(year!) year and I own \(petsNumber.text!) dogs. It is \(isMorePets.isOn) that I want more pets."

              let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
              

              let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
              
              alertController.addAction(action)
              
              present(alertController, animated: true, completion: nil)
    }
    @IBAction func morePetsIndicated(_ sender: Any) {
        print("you have more pets")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }


}

