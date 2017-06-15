//
//  AddNewUserViewController.swift
//  My Service
//
//  Created by Student03 on 6/15/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class AddNewUserViewController: UIViewController {

    //Field decoration
    var nameString: String? = nil
    var userString: String? = nil
    var passwordString: String? = nil
   
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
 
    
    @IBAction func saveButton(_ sender: Any) {
        //Get value from Textfield
        nameString = nameTextField.text
        userString = userTextField.text
        passwordString = passwordTextField.text

               //check empty input
        let intName = nameString?.characters.count
        let intUser = userString?.characters.count
        let intPassword = passwordString?.characters.count
        
        
        if (intName == 0) || (intUser == 0) || (intPassword == 0) {
            print("Have empty input!!!")
        } else {
        
        print("No empty input!!!")
}
    }
    
      
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       print("This is AddNewUser")
        
        
        
    }//Main Method

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }//didrecive
   


}//Main Class
