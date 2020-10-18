//
//  TaskViewController.swift
//  Tasks
//
//  Created by Andrew Y on 10/17/20.
//

import UIKit

class TaskViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var disclaimer2: UILabel!
    
    var task: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = task
        disclaimer2.text = "Disclaimer: This is the very first prototype. Many features and functionalities may be missing"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "delete", style: .done, target: self, action: #selector(deleteTask))
    }
    
    @objc func deleteTask() {
        
        /*guard let count = UserDefaults().value(forKey: "count") as? Int else {
            return
        }
        
        let newCount = count - 1
        
        UserDefaults().setValue(newCount, forKey: "count")
        UserDefaults().setValue(nil, forKey: "task_\(currentPosition)")
        */
    }
    



}
