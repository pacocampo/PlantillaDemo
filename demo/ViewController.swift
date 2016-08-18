//
//  ViewController.swift
//  demo
//
//  Created by Francisco Ocampo Romero on 18/08/16.
//  Copyright © 2016 coldhandslabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var emailField: UITextField!
  
  @IBOutlet weak var errorLabel: UILabel!
  
  @IBAction func entrarAction(sender: AnyObject) {
    if emailField.text == "" {
      errorLabel.text = "Necesito un correo"
    } else {
      errorLabel.text = "Listo. Gracias"
      errorLabel.textColor = UIColor.blueColor()
    }
    errorLabel.hidden = false
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

