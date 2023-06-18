//
//  ViewController.swift
//  Practice_Lessons_UiKit
//
//  Created by Антон Исаков on 17.06.2023.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Outlets
    
    private lazy var imageView: UIImageView = {
        let image = UIImage(named: "Group 94")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var viewWhite: UIView = {
        let viewWhite = UIView()
        viewWhite.backgroundColor = .white
        viewWhite.translatesAutoresizingMaskIntoConstraints = false
        viewWhite.layer.cornerRadius = 10
        viewWhite.layer.shadowColor = UIColor.black.cgColor
        viewWhite.layer.shadowOpacity = 0.5
        viewWhite.layer.shadowOffset = CGSize(width: 2, height: 2)
        viewWhite.layer.shadowRadius = 4
        return viewWhite
    }()
    
    private lazy var textLabel: UILabel = {
        let textLabel = UILabel()
        textLabel.text = "Synth polaroid"
        textLabel.textColor = UIColor(red: 0.108, green: 0.127, blue: 0.18, alpha: 1)
        textLabel.textAlignment = .center
        textLabel.font = UIFont(name: "GTWalsheimPro-Bold", size: 24)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        return textLabel
    }()
    
    private lazy var textLabelTwo: UILabel = {
        let textLabelTwo = UILabel()
        textLabelTwo.text = "In tyhe tumultuous busnes of cutting-in and attending to a whale, there"
        textLabelTwo.numberOfLines = 0
        textLabelTwo.lineBreakMode = .byWordWrapping
        textLabelTwo.textAlignment = .center
        textLabel.font = UIFont(name: "GTWalsheimPro-Bold", size: 12)
        textLabelTwo.textColor = UIColor(red: 0.108, green: 0.127, blue: 0.18, alpha: 1)
        textLabelTwo.translatesAutoresizingMaskIntoConstraints = false
        return textLabelTwo
    }()
    
    private lazy var buttonImInterested: UIButton = {
        let buttonImInterested = UIButton(type: .system)
        buttonImInterested.setTitle("I'm intetrested", for: .normal)
        buttonImInterested.setTitleColor(UIColor.white, for: .normal)
        buttonImInterested.backgroundColor = UIColor(red: 1, green: 0.2, blue: 0.471, alpha: 1)
        buttonImInterested.layer.cornerRadius = 10
        buttonImInterested.translatesAutoresizingMaskIntoConstraints = false
        return buttonImInterested
    }()
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    //MARK: - Setups
    
    private func setupView() {
        view.backgroundColor = .white
    }

    private func setupHierarchy() {
        view.addSubview(imageView)
        view.addSubview(viewWhite)
        viewWhite.addSubview(textLabel)
        viewWhite.addSubview(textLabelTwo)
        viewWhite.addSubview(buttonImInterested)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            // 375*812
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: (view.bounds.width - view.bounds.width * 0.48) / 2),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -(view.bounds.width - view.bounds.width * 0.48) / 2),
            imageView.heightAnchor.constraint(equalToConstant: view.bounds.height * 0.3),
            
            viewWhite.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: view.bounds.height * 0.16),
            viewWhite.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: (view.bounds.width - view.bounds.width * 0.92) / 2),
            viewWhite.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -(view.bounds.width - view.bounds.width * 0.92) / 2),
            viewWhite.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -18),
            
            textLabel.topAnchor.constraint(equalTo: viewWhite.topAnchor, constant: view.bounds.height * 0.04),
            textLabel.bottomAnchor.constraint(equalTo: viewWhite.bottomAnchor, constant: -view.bounds.height * 0.25),
            textLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: (view.bounds.width - view.bounds.width * 0.52) / 2),
            textLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -(view.bounds.width - view.bounds.width * 0.52) / 2),
            
            textLabelTwo.topAnchor.constraint(equalTo: viewWhite.topAnchor, constant: view.bounds.height * 0.1),
            textLabelTwo.leadingAnchor.constraint (equalTo: viewWhite.leadingAnchor, constant: (view.bounds.width - view.bounds.width * 0.04) / 2),
            textLabelTwo.trailingAnchor.constraint (equalTo: viewWhite.trailingAnchor, constant: -(view.bounds.width - view.bounds.width * 0.04) / 2),
            textLabelTwo.heightAnchor.constraint (equalToConstant: view.bounds.height * 0.06),
            
            buttonImInterested.topAnchor.constraint(equalTo: viewWhite.topAnchor, constant: view.bounds.height * 0.04),
            buttonImInterested.bottomAnchor.constraint(equalTo: viewWhite.bottomAnchor, constant: -view.bounds.height * 0.25),
            buttonImInterested.leadingAnchor.constraint(equalTo: viewWhite.leadingAnchor, constant: (view.bounds.width - view.bounds.width * 0.12) / 2),
            buttonImInterested.trailingAnchor.constraint(equalTo: viewWhite.trailingAnchor, constant: -(view.bounds.width - view.bounds.width * 0.12) / 2),
            
//            buttonImInterested.topAnchor.constraint(equalTo: viewWhite.topAnchor, constant: view.bounds.height * 0.1),
//            buttonImInterested.bottomAnchor.constraint(equalTo: viewWhite.bottomAnchor, constant: -45),
//            buttonImInterested.leadingAnchor.constraint (equalTo: viewWhite.leadingAnchor, constant: 45),
//            buttonImInterested.heightAnchor.constraint (equalTo: viewWhite.heightAnchor, constant: -45),
        ])
    }
    
    //MARK: - Actions
}

