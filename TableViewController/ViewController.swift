//
//  ViewController.swift
//  TableViewController
//
//  Created by tamura seiya on 2015/10/13.
//  Copyright (c) 2015年 Seiya Tamura. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    
    //func numberOfSectionsInTableView(tableView: UITableView) -> Int {
      //  return 20
    //}
   
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: .Default, reuseIdentifier: "myCell")
        cell.textLabel?.text = "\(indexPath.row)行目"
        return cell
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    /*
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            var cell = UITableViewCell(style: .Default, reuseIdentifier: "myCell")
            cell.textLabel.text = "\(indexPath.row)"
            
            return cell
        }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("\(indexPath.row)")
    }
    
    
    セクションのフッター
    func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String! {
        return "フッターの文字列"
    }

    //セクションのフッターの高さ
    func tableView(tableView: UITableView, heightFooterInSection section: Int) -> CGFloat {
         return 20
    }
*/

}

