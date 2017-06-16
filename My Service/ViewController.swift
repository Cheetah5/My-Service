//
//  ViewController.swift
//  My Service
//
//  Created by Student03 on 6/15/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   //Explicit
    var myString = ""
    var strUser: String? = nil
    var strPassword: String? = nil
    
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var alertLabel: UILabel!
    
    
    @IBAction func loginButtom(_ sender: Any) {
    
        //Get Value Frome TextField
        strUser = userTextField.text
        strPassword = passwordTextField.text
        
        //Check Space
        if strUser?.characters.count == 0 || strPassword?.characters.count == 0 {
            alertLabel.alpha = 1
        }   else {
        
            alertLabel.alpha = 0
        }
            

    
    
    
    }   //loginButton
   
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        //Process Connected Http
//        let urlPHP = "http://androidthai.in.th"
//        //Change String to url String
//        let myURL = URL(string: urlPHP)
//        
//        let request = NSMutableURLRequest(url: myURL!)
//        let task = URLSession.shared.dataTask(with: request as URLRequest){
//        data, response, error in
//        
//            if error != nil {
//            print("Error ==> \(String(describing: error))")
//            }   else {
//                
//                if let unwrappedData = data{
//                let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
//                let strJSON = dataString as Any
//                print("strJSON ==> \(strJSON)")
//            
//                         }
//                
//        }// if1
//        
//    }
//    task.resume()
        
        
}//Main Method
    
    func readJSON(strURL: String) -> Void {
        
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

        
        
    } // read JSON
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}   //Main Class

