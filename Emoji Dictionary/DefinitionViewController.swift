//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Joker on 1/14/17.
//  Copyright © 2017 Sample. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var Emojilable: UILabel!
    @IBOutlet weak var definationLabel: UILabel!
    
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       Emojilable.text = emoji
        
        if emoji == "😀"{ definationLabel.text = "Happy Face"
        }
        if emoji == "😨"{ definationLabel.text = "Fearful Face"
        }
        if emoji == "😈"{ definationLabel.text = "Devil Face"
        }
        if emoji == "😆"{ definationLabel.text = "Exicited Face"
        }
        if emoji == "😅"{ definationLabel.text = "Guessing Face"
        }
        if emoji == "🤣"{ definationLabel.text = "LMFOA Face"
        }
        
        
        // "😀","😨","😈","😆","😅","🤣"
    
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
