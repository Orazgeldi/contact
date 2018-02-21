//
//  MyTableViewController.swift
//  Contakt
//
//  Created by Orazkeldi Zhamalbekov on 06.02.18.
//  Copyright © 2018 Orazkeldi Zhamalbekov. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    var human : [Human] = [
        Human.init(UIImage.init(named: "male")!,"Nureke" , "8702520115"),
        Human.init(UIImage.init(named: "female")!,"Dariga","87011111011"),
        Human.init(UIImage.init(named: "male")!,"Putin","870113211223")
    ]
    func addNewHuman(newHuman: Human) {
        human.append(newHuman)
        tableView.reloadData()
    }
    func deleteHuman(delIndex: Int){
        human.remove(at: delIndex)
        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       return human.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CustomCell
       
        cell.human_imageView.image = human[indexPath.row].Human_image
        cell.human_name.text = human[indexPath.row].Human_name
        cell.human_number.text = human[indexPath.row].Human_number
        return cell
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            human.remove(at: indexPath.row)
            tableView.reloadData()
        }
        
    }
    



    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "contactInfoSegue"{
            let index = (tableView.indexPathForSelectedRow?.row) ?? 0
            let destination = segue.destination as! infocontact
            destination.human_nametext = human[index].Human_name ?? ""
            destination.human_numbertext = human[(tableView.indexPathForSelectedRow?.row)!].Human_number ?? ""
            destination.humanImage = human[(tableView.indexPathForSelectedRow?.row)!].Human_image ?? UIImage(named: "male")!
            destination.index = index
        } else if segue.identifier == "newContactSegue" {
            let destination = segue.destination as! View
            destination.parentView = self
        }

        }
    }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    
    


