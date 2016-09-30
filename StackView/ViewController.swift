//
//  ViewController.swift
//  StackView
//
//  Created by vamshi raj on 29/09/16.
//  Copyright © 2016 vamshi raj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var descLable: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showDesc(_ sender: AnyObject) {
        let  button =  sender as! UIButton
        
        if button.titleLabel?.text == "Show description" {
            button.setTitle("Hide Description", for: .normal)
            
            UIView.animate(withDuration: 0.3, animations: {
                self.descLable.isHidden = false
                
            })
        }else{
            button.setTitle("Show description", for: .normal)
            
            UIView.animate(withDuration: 0.3, animations: {
                self.descLable.isHidden = true
            })
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

