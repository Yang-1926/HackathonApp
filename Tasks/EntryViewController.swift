//
//  EntryViewController.swift
//  Tasks
//
//  Created by Andrew Y on 10/17/20.
//

import UIKit

class EntryViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var field: UITextField!
    
    var update: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveTask))

    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        
        saveTask()
        
        return true
    }
    
    @objc func saveTask() { //@objc allows saveTask to be used as a selector
        
        guard let text = field.text, !text.isEmpty else { // checks if there is text in said field, if so adds it to text
            return // just skips
        }
        
        guard let count = UserDefaults().value(forKey: "count") as? Int else {
            return
        }
        
        
        let newCount = count + 1
        
        UserDefaults().set(newCount, forKey: "count")
        
        UserDefaults().set(text, forKey: "task_\(newCount)")
        
        update?() //? denotes if the update function exists call it
        
        navigationController?.popViewController(animated: true)
        
        
    }

    
}
