//
//  mintViewController.swift
//  DataSender
//
//  Created by ktds 22 on 2017. 8. 16..
//  Copyright © 2017년 OliveNetworks, Inc. All rights reserved.
//

import UIKit

class mintViewController: UIViewController {

    
    @IBOutlet weak var myText: UITextField!
    
    @IBAction func close(_ sender: Any) {
        // 기존화면에 있던 화면의 값을 가지고 있다.
        // 모달(ex.전화번호 추가(plus버튼)로 가지고 올떄는 presentingViewController로 값을 가져올수 있으나 push(항목선택시 detail화면이 나오는 화면전환 ex.전화번호내용)로 가지고 올때는 presentingViewController사용x -> navigationController로 값을 전달하고 받을 때는 다른방법 사용해야함
        if let prevVC=self.presentingViewController as? purpleViewController{
            prevVC.myStr=myText.text
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
