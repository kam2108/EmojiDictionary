//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Joker on 1/14/17.
//  Copyright © 2017 Sample. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var IntroTableview: UITableView!
    
    var emojis : [Emoji] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        IntroTableview.dataSource = self
        IntroTableview.delegate = self
        emojis = makeEmojiArray()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2001
        emoji1.category = "Smiley"
        emoji1.definition = "A happy face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😨"
        emoji2.birthYear = 2002
        emoji2.category = "Smiley"
        emoji2.definition = "A Fearful Face"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😈"
        emoji3.birthYear = 2003
        emoji3.category = "Smiley"
        emoji3.definition = "A Devil Face"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😆"
        emoji4.birthYear = 2004
        emoji4.category = "Smiley"
        emoji4.definition = "A happy face"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😅"
        emoji5.birthYear = 2005
        emoji5.category = "Smiley"
        emoji5.definition = "An Exicited Face"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🤣"
        emoji6.birthYear = 2006
        emoji6.category = "Smiley"
        emoji6.definition = "A LMFAO Face"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
        
        
    }

}

