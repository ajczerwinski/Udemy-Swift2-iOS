//
//  PlayerViewController.swift
//  PlayerScoop
//
//  Created by Allen Czerwinski on 6/4/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISplitViewControllerDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var players = Player.createPlayers()
    var selectedPlayer = Player()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.splitViewController?.preferredDisplayMode = .AllVisible
        self.splitViewController?.delegate = self
        
    }
    
    func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController, ontoPrimaryViewController primaryViewController: UIViewController) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.players.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let player = self.players[indexPath.row]
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = player.name
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let player = self.players[indexPath.row]
        self.selectedPlayer = player
        self.performSegueWithIdentifier("moveToDetailSegue", sender: nil)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailVC = segue.destinationViewController as! PlayerDetailViewController
        detailVC.player = self.selectedPlayer
    }
    
}
