//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Emir Tunalı on 1/17/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var landmarksImages = [UIImage]()
    
    var landmarksNmaes = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        landmarksNmaes.append("alfa")
        landmarksNmaes.append("amgone")
        landmarksNmaes.append("f40")
        landmarksNmaes.append("f50")
        landmarksNmaes.append("gt3rs")
        landmarksNmaes.append("turbo")
        
        
        landmarksImages.append(UIImage(named: "alfa.jpeg")!)
        landmarksImages.append(UIImage(named: "amgone.jpeg")!)
        landmarksImages.append(UIImage(named: "f40.jpeg")!)
        landmarksImages.append(UIImage(named: "f50.jpeg")!)
        landmarksImages.append(UIImage(named: "gt3rs.jpeg")!)
        
        
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarksNmaes.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "Test"
        var content = cell.defaultContentConfiguration()
        content.text = landmarksNmaes[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }

}

