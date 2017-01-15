//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Joker on 1/14/17.
//  Copyright © 2017 Sample. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
  
    @IBOutlet weak var EmojiLabel: UILabel!
    @IBOutlet weak var definationLabel: UILabel!
    @IBOutlet weak var CategoryLabel: UILabel!
    @IBOutlet weak var BirthyearLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        EmojiLabel.text = emoji.stringEmoji
        BirthyearLabel.text = "Origination 1Date: \(emoji.birthYear)"
        CategoryLabel.text = "Category: \(emoji.category)"
        definationLabel.text = "Definition: \(emoji.definition)"
        
        

    
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
