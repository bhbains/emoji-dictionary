//
//  ViewController.swift
//  Emoji dictionary
//
//  Created by Brian on 12/12/16.
//  Copyright © 2016 Brian. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    

    @IBOutlet weak var daCoolTableView: UITableView!
    
    var emojis = ["😡","😎","👻","💩","👮🏿", "🍑", "🍆"]
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        
       daCoolTableView.dataSource = self
        
        daCoolTableView.delegate = self
        
        
           }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       
        
      let cell = UITableViewCell()
        
        cell.textLabel?.text = emojis[indexPath.row]
        
        return cell
        
        
    }
    
    override func didReceiveMemoryWarning() {
        
        
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

