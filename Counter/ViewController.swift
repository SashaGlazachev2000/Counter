//
//  ViewController.swift
//  Counter
//
//  Created by Alexandr Glazachev on 27.07.2023.
//

import UIKit

class ViewController: UIViewController {
    var counter: Int = 0
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counterLabel.text = "Значение счётчика: \(counter)"
        
    }

    @IBAction func addCounter(_ sender: Any) {
        counter += 1
        counterLabel.text = "Значение счётчика: \(counter)"
    }
    
}

