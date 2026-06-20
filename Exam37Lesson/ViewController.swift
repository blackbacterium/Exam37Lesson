//
//  ViewController.swift
//  Exam37Lesson
//
//  Created by Black Bacterium on 15.06.2026.
//

import UIKit

class ViewController: UITableViewController {
    
    var teaManager: ITeaManager!
    
    private let cellIdentifier = "cellIdentifier"

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        tableView.register(<#T##nib: UINib?##UINib?#>, forCellReuseIdentifier: cellIdentifier)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        teaManager.getAllTeas().count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }


}

