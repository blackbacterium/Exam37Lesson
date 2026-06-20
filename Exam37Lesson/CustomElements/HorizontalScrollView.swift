//
//  HorizontalScrollView.swift
//  Exam37Lesson
//
//  Created by Black Bacterium on 19.06.2026.
//

import UIKit

class HorizontalScrollView: UIView {
    
    private let scrollView = UIScrollView()
    private let stackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Settings
private extension HorizontalScrollView {
    func setupView() {
        scrollView.addSubview(stackView)
        addSubview(scrollView)
    }
    
    func setupStackView() {
        stackView.axis = .horizontal
        stackView.spacing = 10
    }
}

// MARK: - Setup Layout
private extension HorizontalScrollView {
    func setupLayoutScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        ])
    }
}
