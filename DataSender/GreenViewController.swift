//
//  GreenViewController.swift
//  DataSender
//
//  Created by ktds 22 on 2017. 8. 16..
//  Copyright © 2017년 OliveNetworks, Inc. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    
    @IBAction func myAction(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let appDelegate=UIApplication.shared.delegate as? AppDelegate{
            appDelegate.myStr=myTextField.text
        }
    }
    

}
