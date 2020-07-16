//
//  photoViewController.swift
//  拍立得
//
//  Created by 黃芳致 on 2020/7/15.
//

import UIKit

class photoViewController: UIViewController {
    @IBOutlet weak var blankView: UIView!
    
    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var massageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        massageLabel.text = photoText
        var widht:CGFloat = 375
        var height:CGFloat = 375
        if ratio == "1:1"{
            widht = 275
            height = widht
        }
        else if ratio == "3:4"
        {
            widht = 275
            height = widht/3*4
        }
        else if ratio == "16:9"
        {
            widht = 275
            height = widht/16*9
        }
        blankView.frame.size.height = height + 110
        subView.frame = CGRect(x: (blankView.frame.width-widht)/2, y: 20, width: widht, height: height)
        imageView.frame = CGRect(x: -(view.frame.width-widht)/2, y: -(view.frame.width-height)/2, width: 375, height: 375)
        massageLabel.frame.origin.y = subView.frame.maxY+5
        
        let blankViewHight = self.blankView.frame.size.height
        let massageY = massageLabel.frame.origin.y
        let subViewY = massageY - 5 - subView.frame.height
        
        self.blankView.frame.size.height = 0
        self.massageLabel.frame.origin.y = -85
        self.subView.frame.origin.y = -90 - subView.frame.height
        UIView.animate(withDuration: 2) {
            self.blankView.frame.size.height = blankViewHight
            self.massageLabel.frame.origin.y = massageY
            self.subView.frame.origin.y = subViewY
            
        
        
        
        
        
        
        
        
        
        
        
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
