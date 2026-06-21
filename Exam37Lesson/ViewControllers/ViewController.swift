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
        tableView.separatorStyle = .none
        tableView.register(TeaCell.self, forCellReuseIdentifier: cellIdentifier)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        teaManager.getAllTeas().count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TeaCell else {
            return UITableViewCell()
        }
        
        let section = teaManager.getAllTeas()[indexPath.row]
        
        cell.configure(teaSection: section)
        cell.action = presentDetailsVC
        
        return cell
    }
    
    private func presentDetailsVC(_ teaName: String) {
        guard let tea = getTea(teaName: teaName) else { return }
        let detailsVC = DetailsViewController()
        detailsVC.configure(tea: tea)
        
        present(detailsVC, animated: true)
    }
    
    private func getTea(teaName: String) -> TeaModel? {
        for section in teaManager.getAllTeas() {
            for tea in section.teas {
                if tea.nameTea == teaName {
                    return tea
                }
            }
        }
        return nil
    }
}
