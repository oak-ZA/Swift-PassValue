//
//  FourViewController.swift
//  SCREEN
//
//  Created by 张奥 on 2019/8/22.
//  Copyright © 2019年 张奥. All rights reserved.
//

import UIKit

class FourViewController: UIViewController {
    var myClosure : ((_:String) -> (Void))?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.purple
        // Do any additional setup after loading the view.
        let button = UIButton()
        button.frame = CGRect(x: (ScrennPix().width - 100.0)/2.0, y: (ScrennPix().height - 100.0)/2.0, width: 100.0, height: 100.0)
        button.backgroundColor = UIColor.red
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(clickButton(button:)), for: UIControlEvents.touchUpInside)
        
        let label = UILabel()
        label.frame = CGRect(x: 20.0, y: button.frame.origin.y + button.frame.size.height + 10.0, width: ScrennPix().width - 40.0, height: 40.0)
        label.textColor = UIColor.white
        label.backgroundColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 13.0);
        label.textAlignment = NSTextAlignment.center
        label.text = "界面四"
        self.view.addSubview(label)
    }

  @objc  func clickButton(button:UIButton) -> Void {
    if myClosure != nil {
        myClosure?("你好")
    }
 }
    
    func changeColor(_ a:UIColor) -> Void {
        self.view.backgroundColor = a
    }
    func myOpreation(_ a: Int, _ b: Int, operation:(Int, Int) -> Int) -> Int {
        
        let res = operation(a,b)
        return res
        
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
