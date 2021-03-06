//
//  DetailViewController.swift
//  calendar2
//
//  Created by JEN Lee on 2021/03/07.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initViewController()
        addSubViews()
        addConstraints()
    }
    
    private func initViewController() {
        
        self.view.backgroundColor = .clear
    }
    
    private func addSubViews() {
        
        view.addSubview(screenView)
        screenView.addSubview(doneBtn)
    }
    
    
    private func addConstraints() {
        
        NSLayoutConstraint.activate([
            screenView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            screenView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            screenView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 180),
            screenView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200)
            
        ])
        
        
        NSLayoutConstraint.activate([
            doneBtn.bottomAnchor.constraint(equalTo: screenView.bottomAnchor, constant: -20),
            doneBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        
    }
    
    
    let screenView: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .white
        return myView
    }()
    
    
    let doneBtn: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("확인", for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(closeModal), for: .touchUpInside)
        return button
    }()
    
    @objc func closeModal() {
        self.dismiss(animated: true)
    }


}
