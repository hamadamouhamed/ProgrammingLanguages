//
//  ViewController.swift
//  ProgrammingLanguages
//
//  Created by Hamada Mouhamed on 1/14/18.
//  Copyright © 2018 Hamada Mouhamed. All rights reserved.
//

import UIKit

class MainVC: UIViewController , UITableViewDataSource , UITableViewDelegate  {
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "Next", sender: indexPath.row)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextVC = segue.destination as? InformationViewController {
            nextVC.Receiverinformation = Database.Array [ sender as! Int]
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Database.Array.count //  to calculate all elements in array without detect and defined number..
        
    }
   // var Array : [String] = ["Swift","Python","JavaScript"]
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableView.dequeueReusableCell(withIdentifier: "Cell") as! MyTableViewCell
        cell.Label.text = ""
        cell.ImageView.image = nil
        cell.ImageView.image = Database.Array[indexPath.row].Image
        cell.Label.text = Database.Array[indexPath.row].Name
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        Database.PutProgrammingLanguage()
        TableView.dataSource = self
        TableView.delegate = self
        
    }
    
   
    @IBOutlet weak var TableView: UITableView!
    
   
}
