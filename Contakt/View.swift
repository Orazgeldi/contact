//
//  View.swift
//  Contakt
//
//  Created by Orazkeldi Zhamalbekov on 06.02.18.
//  Copyright © 2018 Orazkeldi Zhamalbekov. All rights reserved.
//

import UIKit

class View: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
   
    @IBOutlet weak var name: UITextField!
    var parentView: MyTableViewController?
    
    @IBOutlet weak var number: UITextField!
    var genderType = "male"

        // Do any additional setup after loading the view.
   
    @IBOutlet weak var pickerView: UIPickerView!
    let gender = ["male","female"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return gender[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gender.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        genderType = gender[row]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func saveClicked(_ sender: Any) {
        let newHuman = Human(UIImage(named: genderType)!, name.text!, number.text!)
        if let parent = parentView {
            parent.addNewHuman(newHuman: newHuman)
            self.navigationController?.popViewController(animated: false)
        } else {
            print("SAVE ERROR")
        }
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
