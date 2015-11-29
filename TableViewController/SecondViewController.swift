//
//  SecondViewController.swift
//  TableViewController
//
//  Created by tamura seiya on 2015/10/13.
//  Copyright (c) 2015年 Seiya Tamura. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: .Default, reuseIdentifier: "myCell")
        cell.textLabel?.text = "\(indexPath.row)行目"
        //もじを茶色にする
        cell.textLabel?.textColor = UIColor.brownColor()
        //文字サイズを20にする
        cell.textLabel?.font = UIFont.systemFontOfSize(20)
        //チェックマークをつける
        cell.accessoryType = .Checkmark
        
        return cell
        
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
