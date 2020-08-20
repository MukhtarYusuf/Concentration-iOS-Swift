//
//  ConcentrationThemeCooserViewController.swift
//  Concentration
//
//  Created by Mukhtar Yusuf on 7/9/20.
//  Copyright © 2020 Mukhtar Yusuf. All rights reserved.
//

import UIKit

class ConcentrationThemeCooserViewController: UIViewController, UISplitViewControllerDelegate {
    private var splitViewDetailConcentrationViewController: ConcentrationViewController? {
        return splitViewController?.viewControllers.last as? ConcentrationViewController
    }
    private var lastSeguedToConcentrationViewController: ConcentrationViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func awakeFromNib() {
        splitViewController?.delegate = self
    }
    
    let themes = [
        "Sports" : "⚽️🏀🏈⚾️🎾🏐🏉🎱🏓⛷🎳⛳️",
        "Animals" : "🐶🐔🦊🐼🦀🐪🐓🐋🐙🦄🐵",
        "Faces" : "😀😂😎😫😰😴🙄🤔😘😷"
    ]
}
