//
//  DocumentViewController.swift
//  Documents
//
//  Created by Cassidy Pelchat on 8/30/19.
//  Copyright © 2019 Cassidy Pelchat. All rights reserved.
//

import UIKit

class DocumentViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var documentTextView: UITextView!
    
    var document: Document?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let document = document {
            documentTextView.text = document.content ?? ""
            nameTextField.text = document.name
            
            title = document.name
        } else {
            title = ""
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
 
    }
    @IBAction func nameChanged(_ sender: Any) {
        title = nameTextField.text
    }
    
    @IBAction func save(_ sender: Any) {
        guard let name = nameTextField.text else {
            return
        }
        
        Documents.save(name: name, content: documentTextView.text)
        
        navigationController?.popViewController(animated: true)
    }
}
