//
//  CustomView.swift
//  Exam37Lesson
//
//  Created by Black Bacterium on 20.06.2026.
//

import UIKit

class CustomView: UIView {
    private let titleLabel = UILabel()
    private let descriptionLabel = UILabel()
    private let imageTea = UIImageView()
    
    private var tea: TeaModel?
    
    init(tea: TeaModel) {
        super.init(frame: .zero)
        self.tea = tea
        configure(tea: tea)
        setup()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: - Settings
extension CustomView {
    func configure(tea: TeaModel) {
        titleLabel.text = tea.nameTea
        descriptionLabel.text = tea.teaDetail
        imageTea.image = UIImage(named: tea.nameTea)
        
        widthAnchor.constraint(equalToConstant: 320).isActive = true
//        heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    func setup() {
        backgroundColor = UIColor(cgColor: CGColor(red: 234/255, green: 255/255, blue: 234/255, alpha: 1))
        layer.cornerRadius = 20
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.3
        layer.shadowOffset = CGSize(width: 5, height: 5)
        layer.shadowRadius = 10
        
        addSubviews()
        setupTitleLabel()
        setupDescriptionLabel()
        setupImageTea()
        
        setupLayout()
    }
    
    func addSubviews() {
        [titleLabel,
         descriptionLabel,
         imageTea].forEach { view in
            addSubview(view)
        }
    }
    
    func setupTitleLabel() {
        titleLabel.font = .boldSystemFont(ofSize: 20)
    }
    
    func setupDescriptionLabel() {
        descriptionLabel.numberOfLines = 0
    }
    
    func setupImageTea() {
        imageTea.widthAnchor.constraint(equalToConstant: 120).isActive = true
        imageTea.heightAnchor.constraint(equalToConstant: 120).isActive = true
        imageTea.contentMode = .scaleAspectFill
        imageTea.layer.cornerRadius = 12
        imageTea.clipsToBounds = true
    }
}

//MARK: - Setup Layout
extension CustomView {
    
    func setupLayout() {
        [titleLabel,
        descriptionLabel,
         imageTea].forEach { view in
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            imageTea.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            imageTea.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            imageTea.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            
            titleLabel.leadingAnchor.constraint(equalTo: imageTea.trailingAnchor, constant: 16),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            descriptionLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
    }
}
