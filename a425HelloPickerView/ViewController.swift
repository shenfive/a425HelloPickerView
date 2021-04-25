//
//  ViewController.swift
//  a425HelloPickerView
//
//  Created by 申潤五 on 2021/4/25.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var pickview: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickview.dataSource = self
        pickview.delegate = self
        
    }

    //MARK: UIPickerViewDataSource && Delegate
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "Hello"
    }
    
    

}

