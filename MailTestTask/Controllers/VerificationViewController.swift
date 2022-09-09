//
//  ViewController.swift
//  MailTestTask
//
//  Created by Артур Дохно on 09.09.2022.
//

import UIKit

class VerificationViewController: UIViewController {
    
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "image")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let statusLabel = StatusLabel()
    private let mailTextField = MailTextField()
    private let verificationButton = VerificationButton()
    private let collectionView = MailCollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setDelegate()
        setConstraints()
    }
    
    private func setupViews() {
        view.addSubview(backgroundImageView)
        view.addSubview(statusLabel)
    }
    
    private func setDelegate() {
        collectionView.dataSource = self
        collectionView.selectMailDelegate = self
    }

}

// MARK: - UICollectionViewDataSource

extension VerificationViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: idCell.idMailCell.rawValue,
                                                            for: indexPath) as? MailCollectionViewCell
        else {
            return UICollectionViewCell()
        }
        
        return cell
    }
    
}

// MARK: - SelectProposedMailProtocol

extension VerificationViewController: SelectProposedMailProtocol {
    
    func selectProposedMail(indexPath: IndexPath) {
        print(indexPath)
    }
    
}

// MARK: - Set Constraints

extension VerificationViewController {
    
    private func setConstraints() {
        
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            backgroundImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            statusLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            statusLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            statusLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
    }
    
}
