//
//  ViewController.swift
//  Navigation1to1
//
//  Created by SWUCOMPUTER on 26/03/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var pizzaChiken: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toOrderView"{
            let destVC = segue.destination as! OrderViewController
            
            let ordered: String! = pizzaChiken.titleForSegment(at: pizzaChiken.selectedSegmentIndex)
            
            destVC.title = ordered
            
            var outString = "감사합니다!!\n주문내역: <"
            outString += ordered
            outString += ">, 맞나요?"
            destVC.info = outString
        }
    }
}
