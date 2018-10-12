//
//  TableVueController.swift
//  Lecteur_Youtube
//
//  Created by Ecole NaN on 12/10/2018.
//  Copyright © 2018 Ecole NaN. All rights reserved.
//

import UIKit

class TableVueController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableauVuesController: UITableView!
    
    //cr-éons notre Array de Song
    var songArray = [Singing]()
    
 // Do any additional setup after loading the view.
    override func viewDidLoad() {
        super.viewDidLoad()
        tableauVuesController.delegate = self
        tableauVuesController.dataSource = self
        addSongView()
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func addSongView() {
        
        songArray = [Singing]()
        let jamesArthur = Singing("James Arthur", "Say You Won't Let Go", "0yW7w8F2TVA")
        let arthurJames = Singing("James Arthur", "Naked", "WXyLdg4mJxo")
        let neYo = Singing("Timbaland", "Hands In The Air ft. Ne-Yo", "ZdtNR0Gu_FI")
        let charliePuth = Singing("Charlie Puth", "Done For Me (feat. Kehlani)", "TdyllLZeviY")
        let puthCharlie = Singing("Charlie Puth", "Attention", "nfs8NYg7yQM")
        let jamesArthurOne = Singing("Adele", "Someone Like You", "hLQl3WQQoQ0")
        let arthurJamesTwo = Singing("Adele", "Rolling in the Deep", "rYEDA3JcQqw")
        let neYoOne = Singing("Ne-Yo", "Beautiful Monster", "2J2dwFVZHsY")
        let charliePuthOne = Singing("Charlie Puth", "One Call Away", "BxuY9FET9Y4")
        songArray.append(contentsOf: [jamesArthur, arthurJames, neYo, charliePuth, puthCharlie, jamesArthurOne, arthurJamesTwo, neYoOne, charliePuthOne])
        tableauVuesController.reloadData()
    }

}
