//
//  HorizontalScrollView.swift
//  Exam37Lesson
//
//  Created by Black Bacterium on 19.06.2026.
//

import UIKit

class HorizontalScrollView: UIView {
    
    var action: ((String) -> ())?
    
    private let scrollView = UIScrollView()
    private let stackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupLayoutScrollView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(teas: [TeaModel]) {
        stackView.arrangedSubviews.forEach {
            stackView.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        
        for tea in teas {
            let view = CustomView(tea: tea)
            view.action = tapView
            stackView.addArrangedSubview(view)
        }
    }
    
    private func tapView(_ nameTea: String) {
        action?(nameTea)
    }
}

// MARK: - Settings
private extension HorizontalScrollView {
    func setupView() {
        scrollView.addSubview(stackView)
        addSubview(scrollView)
        
        setupStackView()
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
