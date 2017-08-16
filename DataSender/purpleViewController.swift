//
//  purpleViewController.swift
//  DataSender
//
//  Created by ktds 22 on 2017. 8. 16..
//  Copyright © 2017년 OliveNetworks, Inc. All rights reserved.
//

import UIKit

class purpleViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    var myStr:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        /* viewDidLoad함수는 최초 해당 화면이 실행될떄 한번 수행하므로 다른화면에 갔다가 오면 실행이 안되고 기존화면이 뜬다 매번 새로 refresh된 화면을 보려면 viewWillAppear사용
         if let str=myStr{
            myLabel.text=str
        }
         */
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let str=myStr{
         myLabel.text=str
         }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
