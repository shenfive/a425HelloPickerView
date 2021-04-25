//
//  ViewController.swift
//  a425HelloPickerView
//
//  Created by 申潤五 on 2021/4/25.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource {

    @IBOutlet weak var pickview: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickview.dataSource = self
        
    }

    //MARK: UIPickerViewDataSource
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }
    
    

}

