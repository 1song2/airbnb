//
//  MainSearchCollectionViewController+ResultsUpdate.swift
//  AirbnbApp
//
//  Created by Song on 2021/05/21.
//

import UIKit

extension MainSearchCollectionViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { return }
        
        if let resultsController = searchController.searchResultsController as? ResultsCollectionController {
            let filtered = viewModel.filter(using: text)
            resultsController.updateFilteredDestination(with: filtered)
            resultsController.collectionView.reloadData()
        }
    }
}