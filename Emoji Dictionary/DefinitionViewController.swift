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
    
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       EmojiLabel.text = emoji
        
        if emoji == "😀"{
            definationLabel.text =
            "HappyFace"
            CategoryLabel.text = "Emoji"
            BirthyearLabel.text = "2001"
        }
        if emoji == "😨"{
            definationLabel.text = "Fearful Face"
            CategoryLabel.text = "Emoji"
            BirthyearLabel.text = "2002"
        }
        if emoji == "😈"{
            definationLabel.text = "Devil Face"
            CategoryLabel.text = "Emoji"
            BirthyearLabel.text = "2003"
        }
        if emoji == "😆"{
            definationLabel.text = "Exicited Face"
            CategoryLabel.text = "Emoji"
            BirthyearLabel.text = "2004"
        }
        if emoji == "😅"{
            definationLabel.text = "Guessing Face"
            CategoryLabel.text = "Emoji"
            BirthyearLabel.text = "2005"
        }
        if emoji == "🤣"{
            definationLabel.text = "LMFOA Face"
            CategoryLabel.text = "Emoji"
            BirthyearLabel.text = "2006"
        }
        
        
        // "😀","😨","😈","😆","😅","🤣"
    
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
