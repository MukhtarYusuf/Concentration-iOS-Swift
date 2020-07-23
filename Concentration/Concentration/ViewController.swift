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
    
    private func updateFlipCountLabel() {
        let attributes: [NSAttributedString.Key : Any] = [
            .strokeWidth : 5.0,
            .strokeColor: #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        ]
        let attributedString = NSAttributedString(string: "Flips: \(flipCount)", attributes: attributes)
        flipCountLabel.attributedText = attributedString
    }
    // MARK: ViewController LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
