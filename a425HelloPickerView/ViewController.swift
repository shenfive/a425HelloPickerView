//
//  ViewController.swift
//  a425HelloPickerView
//
//  Created by 申潤五 on 2021/4/25.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var pickview: UIPickerView!
    
    var astrological = ["請選擇你的星座","白羊宮","金牛宮","雙子宮","巨蟹宮","獅子宮","處女宮","天秤宮","天蠍宮","射手宮","摩羯宮","水瓶宮","雙魚宮"]
    var bloudType = ["請選擇你的血型","A","B","O","AB"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        


        
        
        pickview.dataSource = self
        pickview.delegate = self
        
    }

    //MARK: UIPickerViewDataSource && Delegate
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return astrological.count
        case 1:
            return bloudType.count
        default:
            return 0
        }
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return astrological[row]
        case 1:
            return bloudType[row]
        default:
            return ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        print("ast:\(pickerView.selectedRow(inComponent: 0))")
        print("bld:\(pickerView.selectedRow(inComponent: 1))")
        
        if pickerView.selectedRow(inComponent: 0) != 0 &&
            pickview.selectedRow(inComponent: 1) != 0{
            performSegue(withIdentifier: "goPage2", sender: self)
        }
    }
    
    

}

