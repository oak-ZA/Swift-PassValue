//
//  ViewController.swift
//  SCREEN
//
//  Created by 张奥 on 2019/8/20.
//  Copyright © 2019年 张奥. All rights reserved.
//

import UIKit

class ViewController: UIViewController,ThirdDelegate {
    var label : UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.blue;
        
        let button = UIButton()
        button.frame = CGRect(x: 80, y: (ScrennPix().height - 80.0)/2.0, width: 80.0, height: 80.0);
        button.backgroundColor = UIColor.red;
        button.addTarget(self, action:#selector(buttonClick(button:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(button)
        
        let button2 = UIButton()
        button2.frame = CGRect(x: 180, y: (ScrennPix().height - 80.0)/2.0, width: 80.0, height: 80.0);
        button2.backgroundColor = UIColor.red;
        button2.addTarget(self, action:#selector(buttonClick2(button:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(button2)
        
        let button3 = UIButton()
        button3.frame = CGRect(x: 280, y: (ScrennPix().height - 80.0)/2.0, width: 80.0, height: 80.0);
        button3.backgroundColor = UIColor.red;
        button3.addTarget(self, action:#selector(buttonClick3(button:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(button3)
        
        label = UILabel()
        label!.frame = CGRect(x: 20.0, y: button.frame.origin.y + button.frame.size.height + 10.0, width: ScrennPix().width - 40.0, height: 40.0)
        label!.textColor = UIColor.white
        label!.backgroundColor = UIColor.black
        label!.font = UIFont.systemFont(ofSize: 13.0);
        label!.textAlignment = NSTextAlignment.center
        label!.text = "界面一"
        self.view.addSubview(label!)
        
    }

  @objc  func buttonClick(button:UIButton) -> Void {
//        let lieveView = LiveView()
//        lieveView.initFrameParm(age: 25, name: "张奥", frame: CGRect(x: 0, y: 0, width: ScrennPix().width, height: ScrennPix().height))
//        lieveView.backgroundColor = UIColor.black.withAlphaComponent(0.5)
//        self.view.addSubview(lieveView)
        let secondVC = SecondViewController()
    //属性传值
        secondVC.text = "你好! 界面二"
    secondVC.myClosure = {(text:String) -> (Void) in
        self.label!.text = text
        
    }
       self.present(secondVC, animated: true, completion: nil)
    }
    
    
   @objc func buttonClick2(button:UIButton) -> Void {
      let thirdVC = ThirdViewController()
      thirdVC.delegate = self
    self.present(thirdVC, animated: true, completion: nil)
    }
    
  @objc  func buttonClick3(button:UIButton) -> Void {
        let fourVC = FourViewController()
        fourVC.myClosure = {(title:String) -> Void in
            print("123")
        }
    let number = fourVC.myOpreation(3, 4) { (a:Int, b:Int) -> Int in
        return a * b
    }
    print(number)
    fourVC.changeColor(UIColor.red)
    
        self.present(fourVC, animated: true, completion: nil)
        
    }
    
    func changeText(title:String) -> Void {
        self.label!.text = title
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

