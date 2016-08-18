//
//  DetalleViewController.swift
//  demo
//
//  Created by Francisco Ocampo Romero on 18/08/16.
//  Copyright © 2016 coldhandslabs. All rights reserved.
//

import UIKit

class DetalleViewController: UIViewController {

  var imagen : String?
  
  @IBOutlet weak var banderaImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        banderaImage.image = UIImage(named: imagen!)
        // Do any additional setup after loading the view.
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
