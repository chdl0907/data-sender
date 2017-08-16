//
//  ViewController.swift
//  DataSender
//
//  Created by ktds 22 on 2017. 8. 16..
//  Copyright © 2017년 OliveNetworks, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    
    @IBAction func next(_ sender: Any) {
        let textFieldStr=self.myTextField.text
        print(textFieldStr)
        
        // instantiateViewController는 optional이 아니지만 storyboard가 optional이므로 결과는 optional로 변경됨
        let vc=self.storyboard?.instantiateViewController(withIdentifier: "secondview")
        
        // 상속관계에 있는 경우만 downcasting가능(as)
        // 실패할 가능성이 있기 때문에 optimal(?)로 처리
        if let secondVC=vc as? SecondViewController{
            secondVC.myStr=textFieldStr
            self.present(secondVC, animated: true, completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

