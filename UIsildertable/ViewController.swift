//
//  ViewController.swift
//  UIsildertable
//
//  Created by D7703_23 on 2018. 5. 14..
//  Copyright © 2018년 D7703_23. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myslider: UISlider!
    @IBOutlet weak var mylabel: UILabel!
    @IBOutlet weak var mytabelview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //mySlider.setValue(0.0, animated: true)
       mytabelview.dataSource = self
       mytabelview.delegate = self
    }
    
    @IBAction func sliderMoved(_ sender: Any) {
        
        print("slider vlaue = \(Int(myslider.value ))")
        
        mytabelview.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "RE"
        let cell = mytabelview.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        let tableValue = String(Int(myslider.value) + indexPath.row)
        cell.textLabel?.text = tableValue
        return  cell
    }
    
}


