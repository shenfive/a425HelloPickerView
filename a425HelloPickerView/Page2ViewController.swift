//
//  Page2ViewController.swift
//  a425HelloPickerView
//
//  Created by 申潤五 on 2021/4/25.
//

import UIKit

class Page2ViewController: UIViewController {

    @IBOutlet weak var theLabel: UILabel!
    var bld = ""
    var ast = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("My VC \(bld) \(ast)")
        theLabel.text = "\(bld) \(ast) 讚"
        
        
    }


}
