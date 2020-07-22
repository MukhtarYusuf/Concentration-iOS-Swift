//
//  ViewController.swift
//  Concentration
//
//  Created by Mukhtar Yusuf on 6/30/20.
//  Copyright © 2020 Mukhtar Yusuf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet private weak var flipCountLabel: UILabel! {
        didSet {
        }
    }
    @IBOutlet private var cardButtons: [UIButton]!
    // MARK: ViewController LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
