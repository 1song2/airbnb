//
//  ViewController.swift
//  AirbnbApp
//
//  Created by Song on 2021/05/17.
//

import UIKit

class LandingPageViewController: UIViewController {
    @IBOutlet weak var getTripIdeasButton: UIButton!
    let searchBar = UISearchBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSearchBar()
        configureGetTripIdeasButton()
    }
    
    func configureSearchBar() {
        searchBar.placeholder = "어디로 여행가세요?"
        navigationItem.titleView = searchBar
    }
    
    func configureGetTripIdeasButton() {
        getTripIdeasButton.layer.masksToBounds = true
        getTripIdeasButton.layer.cornerRadius = 10.0
        getTripIdeasButton.contentEdgeInsets = UIEdgeInsets(top: 8.0, left: 16.0, bottom: 8.0, right: 16.0)
    }
}
