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
        switch component {
        case 0:
            return 3
        case 1:
            return 4
        case 2:
            return 5
        default:
            return 0
        }
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "Hello:\(row)"
    }
    
    

}

