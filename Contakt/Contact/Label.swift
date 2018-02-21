//
//  File.swift
//  Contakt
//
//  Created by Orazkeldi Zhamalbekov on 06.02.18.
//  Copyright © 2018 Orazkeldi Zhamalbekov. All rights reserved.
//

import Foundation
import UIKit


  
import UIKit
class Human{
    private var human_image : UIImage?
    private var human_name : String?
    private var human_number : String?
    init(_ human_image : UIImage, _ human_name : String, _ human_number : String){
        self.human_image =  human_image
        self.human_name = human_name
        self.human_number = human_number
    }
    
    var Human_image : UIImage?{
        get{
            return human_image
        }
    }
    
    var Human_name : String?{
        get{
            return human_name
        }
    }
    
    var Human_number : String?{
        get{
            return human_number
        }
    }
}
