//
//  ViewController.swift
//  LightBulb
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var lightBulb: UIImageView!
  @IBOutlet weak var segmentControl: UISegmentedControl!
  
  enum BulbColor: Int { case red = 0, yellow, blue, green }
  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    
    // Preset segment control
    // Set lightbulb to blue
    self.segmentControl.selectedSegmentIndex = BulbColor.blue.rawValue
    lightBulb.backgroundColor = UIColor.blue
    
  }
  
  
  @IBAction func colorSelected(_ sender: UISegmentedControl) {
    
    print(sender.selectedSegmentIndex)
    
    switch sender.selectedSegmentIndex {
    case BulbColor.red.rawValue:
      lightBulb.backgroundColor = .red
    case BulbColor.yellow.rawValue:
      lightBulb.backgroundColor = .yellow
    case BulbColor.blue.rawValue:
      lightBulb.backgroundColor = .blue
    case BulbColor.green.rawValue:
      lightBulb.backgroundColor = .green
    default:
      lightBulb.backgroundColor = .white
    }
  }
  
}
