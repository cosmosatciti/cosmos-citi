//
//  CitiTableViewController.swift
//  cosmosv.4
//
//  Created by vaishnavi kothavasal srinivasa on 10/25/18.
//  Copyright © 2018 ICG. All rights reserved.
//

import UIKit

class CitiTableViewController: UITableViewController, UISearchResultsUpdating {
    
    
    
    var citi = ["Citi Works", "Citi For You", "Collaborate","Citi Cafe", "Degreed on the way", "Shuttle Services"]
    var filteredCiti = [String]()
    
    var searchController : UISearchController!
    var resultsController = UITableViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.resultsController.tableView.dataSource = self
        self.resultsController.tableView.delegate = self
        self.searchController = UISearchController(searchResultsController:self.resultsController)
        self.tableView.tableHeaderView = self.searchController.searchBar
        self.searchController.searchResultsUpdater = self
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        self.filteredCiti = self.citi.filter { (citi:String) -> Bool in
            if citi.contains(self.searchController.searchBar.text!) {
                return true
            } else
            {
                return false
            }
            
        }
        //Update the results table view
    self.resultsController.tableView.reloadData()
    }


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.tableView {
        return self.citi.count
        }
        else
        {
        return self.filteredCiti.count
    }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        if tableView == self.tableView {
        cell.textLabel?.text = self.citi[indexPath.row]
        }
        else {
            cell.textLabel?.text = self.filteredCiti[indexPath.row]
        }
        return cell
    }
 

}
