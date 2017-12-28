//
//  HomeFeedViewController.swift
//  GithubFeed
//
//  Created by Viet Nguyen Tran on 12/27/17.
//  Copyright © 2017 Viet Nguyen Tran. All rights reserved.
//

import UIKit

class HomeFeedViewController: UITableViewController {
    
    fileprivate let repoCellNib = R.nib.repoCell
    fileprivate let repoCellIdentifier = R.reuseIdentifier.repoCell
    
    var viewModel = FeedViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configTable()
    }
    
    private func configTable() {
        // register cell
        tableView.register(repoCellNib)
        // dynamic row height
        tableView.estimatedRowHeight = 90
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

// MARK: - Table view data source
extension HomeFeedViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.fakeData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let repoCell = tableView.dequeueReusableCell(withIdentifier: repoCellIdentifier, for: indexPath)!
        
        // Configure the cell...
        let data = viewModel.fakeData[indexPath.row]
        let cellViewModel = RepoCell.RepoCellViewModel(name: data)
        repoCell.bind(with: cellViewModel)
        
        return repoCell
    }
}
