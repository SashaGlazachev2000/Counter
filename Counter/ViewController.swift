//
//  ViewController.swift
//  Counter
//
//  Created by Alexandr Glazachev on 27.07.2023.
//

import UIKit


class ViewController: UIViewController {
    var _counter: Int = 0
    var counter: Int {
        get{_counter}
        set(newVal){
           _counter = newVal
            counterLabel.text = "Значение счётчика: \(counter)"
        }
        
    }
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var historyCounterTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = "Значение счётчика: \(counter)"
        historyCounterTextView.text = "История изменений:"
    }


    @IBAction func addCounter(_ sender: Any) {
        counter += 1
        historyCounterTextView.text += "\n\(currentData()): значение изменено на +1"
    }
    
    @IBAction func minusCounter(_ sender: Any) {
        if counter == 0{
            historyCounterTextView.text += "\n\(currentData()): попытка уменьшить значение счётчика ниже 0"
            return
        }
        counter -= 1
        historyCounterTextView.text += "\n\(currentData()): значение изменено на -1"
    }
    
    @IBAction func restartCounter(_ sender: Any) {
        if counter == 0{return}
        historyCounterTextView.text += "\n\(currentData()): значение сброшено"
        counter = 0
    }
    
    func currentData()-> String{
        let date = Date()
        
        let dateFoematter =  DateFormatter()
        dateFoematter.dateStyle = .short
        dateFoematter.timeStyle = .medium
        dateFoematter.locale = Locale(identifier: "ru_RU")
        let dateString = dateFoematter.string(from: date)
        
        return dateString
    }
}

