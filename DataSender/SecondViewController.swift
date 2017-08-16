//
//  SecondViewController.swift
//  DataSender
//
//  Created by ktds 22 on 2017. 8. 16..
//  Copyright © 2017년 OliveNetworks, Inc. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    //외부에서 데이터전달받기위한 변수
    //값이 전달 안될수도 있기 때문에 optional로 선언
    var myStr:String?

    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // 전달받은 값이 빈값이 아닐때만 값 할당
        if let str=myStr{
            self.myLabel.text=myStr
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
