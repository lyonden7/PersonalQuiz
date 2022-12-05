//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Денис Васильев on 02.12.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    // MARK: - Public Properties
    var answersChosen: [Answer] = []

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

//[PersonalQuiz.Answer(title: "Стейк", animal: PersonalQuiz.Animal.dog),
// PersonalQuiz.Answer(title: "Плавать", animal: PersonalQuiz.Animal.dog),
// PersonalQuiz.Answer(title: "Не замечаю", animal: PersonalQuiz.Animal.turtle)]
