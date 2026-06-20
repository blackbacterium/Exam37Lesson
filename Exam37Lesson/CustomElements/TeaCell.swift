//
//  TeaCell.swift
//  Exam37Lesson
//
//  Created by Black Bacterium on 20.06.2026.
//

import UIKit

class TeaCell: UITableViewCell {
    private let categoryLabel = UILabel()
    private let horizontalScroll = HorizontalScrollView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(teaSection: TeaSection) {
        categoryLabel.text = teaSection.title
        horizontalScroll.configure(teas: teaSection.teas)
    }
}

//MARK: - Settings
extension TeaCell {
    func setup() {
        contentView.addSubview(categoryLabel)
        contentView.addSubview(horizontalScroll)
        
        categoryLabel.font = .boldSystemFont(ofSize: 30)
        setupLayout()
    }
    
    func setupLayout() {
        categoryLabel.translatesAutoresizingMaskIntoConstraints = false
        horizontalScroll.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            categoryLabel.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            categoryLabel.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 15),
            
            horizontalScroll.topAnchor.constraint(equalTo: categoryLabel.bottomAnchor),
            horizontalScroll.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            horizontalScroll.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            horizontalScroll.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            horizontalScroll.heightAnchor.constraint(equalToConstant: 180)
        ])
    }
}
