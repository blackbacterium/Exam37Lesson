//
//  ViewController.swift
//  Exam37Lesson
//
//  Created by Black Bacterium on 15.06.2026.
//

import UIKit

class ViewController: UITableViewController {
    
    var teaManager: ITeaManager!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        teaManager.getAllTeas().count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }


}

