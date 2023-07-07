//
//  ViewController.swift
//  ProgressView
//
//  Created by DA MAC M1 157 on 2023/07/07.
//

import UIKit

class ViewController: UIViewController {
    
    private let coolProgressView: UIProgressView = {
        let progressView = UIProgressView()
        progressView.translatesAutoresizingMaskIntoConstraints = false
        progressView.progressViewStyle = UIProgressView.Style.default
        progressView.progress = 0.2
        progressView.progressTintColor = UIColor.red
        progressView.trackTintColor = UIColor.systemGray4
        progressView.setProgress(0.4, animated: true)
        return progressView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
        configureConstraints()
    }
    
    private func configureViews() {
        view.addSubview(coolProgressView)
    }
    
    private func configureConstraints() {
        let coolProgressViewConstraints = [
            coolProgressView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            coolProgressView.widthAnchor.constraint(equalToConstant: 280),
            coolProgressView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ]
        
        NSLayoutConstraint.activate(coolProgressViewConstraints)
    }

}

