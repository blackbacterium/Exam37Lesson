//
//  DetailsViewController.swift
//  Exam37Lesson
//
//  Created by Black Bacterium on 21.06.2026.
//

import UIKit

class DetailsViewController: UIViewController {
    
    private let imageTea = UIImageView()
    private let detailLabel = UILabel()
    private let fullDetailLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    func configure(tea: TeaModel?) {
        imageTea.image = UIImage(named: tea?.nameTea ?? "")
        detailLabel.text = tea?.teaDetail
        fullDetailLabel.text = tea?.teaFullDetail
    }
}

//MARK: - Setting
extension DetailsViewController {
    func setup() {
        view.backgroundColor = UIColor(cgColor: CGColor(red: 234/255, green: 255/255, blue: 234/255, alpha: 1))
        
        addSubviews()
        setupImageTea()
        setupDetailLabel()
        setupfullDetailLabel()
        setupLayout()
    }
    
    func setupImageTea() {
        imageTea.widthAnchor.constraint(equalToConstant: 150).isActive = true
        imageTea.heightAnchor.constraint(equalToConstant: 150).isActive = true
        imageTea.contentMode = .scaleAspectFill
        imageTea.layer.cornerRadius = 12
        imageTea.clipsToBounds = true
    }
    
    func setupDetailLabel() {
        detailLabel.textAlignment = .center
        detailLabel.font = UIFont.systemFont(ofSize: 30, weight: .medium)
        detailLabel.textColor = .black
        detailLabel.numberOfLines = 0
    }
    
    func setupfullDetailLabel() {
        fullDetailLabel.textAlignment = .center
        fullDetailLabel.font = UIFont.systemFont(ofSize: 20, weight: .light)
        fullDetailLabel.textColor = .darkGray
        fullDetailLabel.numberOfLines = 0
    }
    
    func addSubviews() {
        [imageTea,
         detailLabel,
         fullDetailLabel].forEach { subview in
            view.addSubview(subview)
        }
    }
    
    func setupLayout() {
        [imageTea,
         detailLabel,
         fullDetailLabel].forEach { subview in
            subview.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            imageTea.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            imageTea.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            detailLabel.topAnchor.constraint(equalTo: imageTea.bottomAnchor, constant: 20),
            detailLabel.centerXAnchor.constraint(equalTo: imageTea.centerXAnchor),
            detailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            detailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            fullDetailLabel.topAnchor.constraint(equalTo: detailLabel.bottomAnchor, constant: 20),
            fullDetailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            fullDetailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}
