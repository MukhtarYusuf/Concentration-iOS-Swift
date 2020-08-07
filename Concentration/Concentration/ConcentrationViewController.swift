//
//  ViewController.swift
//  Concentration
//
//  Created by Mukhtar Yusuf on 6/30/20.
//  Copyright © 2020 Mukhtar Yusuf. All rights reserved.
//

import UIKit

class ConcentrationViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet private weak var flipCountLabel: UILabel! {
        didSet {
            updateFlipCountLabel()
        }
    }
    @IBOutlet private var cardButtons: [UIButton]!
    
    // MARK: Variables
    private var visibleCardButtons: [UIButton]! {
        return cardButtons?.filter { !$0.superview!.isHidden }
    }
    private lazy var game = Concentration(numberOfPairsOfCards: numberOfPairsOfCards)
    private(set) var flipCount = 0 {
        didSet {
            updateFlipCountLabel()
        }
    }
    var numberOfPairsOfCards: Int {
        get {
            return (visibleCardButtons.count + 1) / 2
        }
    }
//    private var emojiChoices = ["🦇", "😱", "🙀", "😈", "🎃", "👻", "🍭", "🍬", "🍎"]
    private var emojiChoices = "🦇, 😱, 🙀, 😈, 🎃, 👻, 🍭, 🍬, 🍎"
    private var emoji = [Card : String]()
    
    // MARK: IBActions
    @IBAction private func touchCard(_ sender: UIButton) {
        flipCount += 1
    }
    
    // MARK: Methods
    private func updateViewFromModel() {
    }
    
    private func updateFlipCountLabel() {
        let attributes: [NSAttributedString.Key : Any] = [
            .strokeWidth : 5.0,
            .strokeColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        ]
        let attributedString = NSAttributedString(string:
            traitCollection.verticalSizeClass == .compact ? "Flips: \n \(flipCount)" : "Flips: \(flipCount)",
            attributes: attributes)
        flipCountLabel.attributedText = attributedString
    }
    
    func emoji(for card: Card) -> String {
        if emoji[card] == nil, emojiChoices.count > 0 {
            let randomIndex = emojiChoices.count.arc4random
            let randomStringIndex = emojiChoices.index(emojiChoices.startIndex, offsetBy: randomIndex)
            emoji[card] = String(emojiChoices.remove(at: randomStringIndex))
        }
        
        return emoji[card] ?? "?"
    }
    
    // MARK: ViewController LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
extension Int {
    var arc4random: Int {
        if self > 0 {
            return Int(arc4random_uniform(UInt32(self)))
        } else if self < 0 {
            return -Int(arc4random_uniform(UInt32(self)))
        } else {
            return 0
        }
    }
}
