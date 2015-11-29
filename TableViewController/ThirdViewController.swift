//
//  ThirdViewController.swift
//  TableViewController
//
//  Created by tamura seiya on 2015/10/13.
//  Copyright (c) 2015年 Seiya Tamura. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var fontName_array:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for fontFamilyName in UIFont.familyNames(){
            for fontName in UIFont.fontNamesForFamilyName(fontFamilyName as! String){
            fontName_array.append(fontName as! String)
        }
      }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fontName_array.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "myCell")
        
        var fontName = fontName_array[indexPath.row]
        cell.textLabel?.text = "ABCDE abcde 012345 あいうえお"
        cell.textLabel?.font = UIFont(name: fontName, size:10)
        
        cell.detailTextLabel?.textColor = UIColor.brownColor()
        cell.detailTextLabel?.text = fontName
        print(fontName_array)
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
