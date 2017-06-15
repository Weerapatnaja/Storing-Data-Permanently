//
//  ViewController.swift
//  Data Storing PerManentty
//
//  Created by Student13 on 6/15/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Implicit
    var strPhone = " "
    
    
    
    
    @IBOutlet weak var showPhoneLable: UILabel!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        
        //Get Value From TextField
        strPhone = phoneTextField.text!
        print("StrPhone ==> \(strPhone)")
        
        
        //Save to Permanantly
        UserDefaults.standard.set(strPhone, forKey: "Phone")
        
        
        
        
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let strPermanentPhone = UserDefaults.standard.object(forKey: "Phone")
        
        if let myPermanant = strPermanentPhone as? String {
            print("Resulr from Permanant ==> \(myPermanant)")
            
            showPhoneLable.text = myPermanant
        }
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

