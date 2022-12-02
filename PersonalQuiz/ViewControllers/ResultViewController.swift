//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Денис Васильев on 02.12.2022.
//

import UIKit

class ResultViewController: UIViewController {

    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - IB Actions
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
}

// MARK: - Private Methods
extension ResultViewController {
    
}
