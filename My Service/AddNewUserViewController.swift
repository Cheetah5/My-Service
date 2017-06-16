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
    
    
    @IBOutlet weak var alertLable: UILabel!

    @IBOutlet weak var nameTextField: UITextField!
       
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
 
    
    @IBAction func saveButtom(_ sender: Any) {//Get value from Textfield
        nameString = nameTextField.text
        userString = userTextField.text
        passwordString = passwordTextField.text
        
        //check empty input
        let intName = nameString?.characters.count
        let intUser = userString?.characters.count
        let intPassword = passwordString?.characters.count
        
        
        if (intName == 0) || (intUser == 0) || (intPassword == 0) {
            print("Have empty input!!!")
            alertLable.alpha = 1
        } else {
            print("No empty input!!!")
            alertLable.alpha = 0
            let strMyURL = "http://androidthai.in.th/snru/adduserNewly.php?isAdd=true&Name=" + nameString! + "&User=" + userString! + "&Password=" + passwordString!
            print("strMyURL ==> \(strMyURL)")
            uploadValueToServer(strURL: strMyURL)
            
        }

      
    }//Save Buttom
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       print("This is AddNewUser")
        
        
        
    }//Main Method

    
    
    func uploadValueToServer(strURL: String) -> Void {
        
        //Process Connected Http
        let urlPHP = strURL
        //Change String to url String
        let myURL = URL(string: urlPHP)
        
        let request = NSMutableURLRequest(url: myURL!)
        let task = URLSession.shared.dataTask(with: request as URLRequest){
            data, response, error in
            
            if error != nil {
                print("Error ==> \(String(describing: error))")
            }   else {
                
                if let unwrappedData = data{
                    let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                    let strJSON = dataString as Any
                    print("strJSON ==> \(strJSON)")
                    
                }
                
                
            }// if1
            
            
        }
        task.resume()
    performSegue(withIdentifier: "BackHome", sender: self)
        
    }// End Upload Value To Server
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goHome" {
            if let destination = segue.destination as? ViewController {
                destination.myString = (sender as? String)!
            }
        }//if
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }//didrecive
   


}//Main Class
