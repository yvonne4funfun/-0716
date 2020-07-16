//
//  ViewController.swift
//  拍立得
//
//  Created by 黃芳致 on 2020/7/15.
//

import UIKit


var ratio = "1:1"
var photoText = ""


class ViewController: UIViewController {

    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func keyboard(_ sender: UITextField) {
        photoText = sender.text!
    }
    
    @IBAction func proportionButton(_ sender: UIButton) {
        var width : CGFloat = 375
        var height : CGFloat = 375
        
        //sender.currentTitle = 按鈕上的數字
        if sender.currentTitle == "1:1" {
            ratio = "3:4"
            width = 275
            height = width / 3 * 4
            
        }
        else if sender.currentTitle == "3:4"
        {ratio = "16:9"
            width = 275
            height = width / 16 * 9
            
        }else {
            ratio = "1:1"
            width = 275
            height = width
        }
        sender.setTitle(ratio, for: UIControl.State.normal)
        subView.frame = CGRect(x: (view.frame.width-width)/2, y: 120+(view.frame.width-height)/2, width: width, height: height)
        imageView.frame = CGRect(x: -(view.frame.width-width)/2, y: -(view.frame.width-height)/2, width: 375, height: 375)
        print(imageView)
    }
}

