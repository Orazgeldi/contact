//
//  infocontact.swift
//  Contakt
//
//  Created by Orazkeldi Zhamalbekov on 07.02.18.
//  Copyright © 2018 Orazkeldi Zhamalbekov. All rights reserved.
//

import UIKit

class infocontact: UIViewController {
    var human_nametext = String()
    var human_numbertext = String()
    var humanImage = UIImage()
    
    var parentView: MyTableViewController?
    var index:Int?
    @IBOutlet weak var human_number: UILabel!
    @IBOutlet weak var human_name: UILabel!
    @IBOutlet weak var human_imageVeiw: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        human_name.text = human_nametext
        human_number.text = human_numbertext
        human_imageVeiw.image = humanImage
    }
        
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func deledet(_ sender: Any) {
        if let parent = parentView {
            parent.deleteHuman(delIndex: index ?? 0)
            self.navigationController?.popViewController(animated: false)
        } else {
            print("DELETE ERROR")
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
