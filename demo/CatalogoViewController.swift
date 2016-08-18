//
//  CatalogoViewController.swift
//  demo
//
//  Created by Francisco Ocampo Romero on 18/08/16.
//  Copyright © 2016 coldhandslabs. All rights reserved.
//

import UIKit

class CatalogoViewController: UIViewController, UITableViewDataSource {
  
  let paises = ["ARGENTINA", "BRASIL", "CHILE", "MEXICO", "PERU"]
  let banderas = ["Argentina", "Brasil", "Chile", "Mexico", "Peru"]

  @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  @IBAction func logoutAction(sender: AnyObject) {
    self.dismissViewControllerAnimated(true, completion: nil)
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return paises.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("cell")
    cell?.textLabel?.text = paises[indexPath.row]
    cell?.imageView?.image = UIImage(named: banderas[indexPath.row])
    
    return cell!
  }
    

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
      let view = segue.destinationViewController as! DetalleViewController
      let cell = self.tableView.indexPathForSelectedRow?.row
      view.imagen = banderas[cell!]
    }
  

}
