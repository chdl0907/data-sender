//
//  BlueViewController.swift
//  DataSender
//
//  Created by ktds 22 on 2017. 8. 16..
//  Copyright © 2017년 OliveNetworks, Inc. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {


    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let appDelegate=UIApplication.shared.delegate as? AppDelegate{
            myLabel.text=appDelegate.myStr
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
    }
 
*/
}
