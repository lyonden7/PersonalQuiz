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
        test()
    }

    // MARK: - IB Actions
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
    
    // MARK: - Private Methods
    private func test() {
        var chosenAnimal: [Animal] = []
        for chosen in answersChosen {
            print(chosen.animal)
            chosenAnimal.append(chosen.animal)
        }
        
        var counts: [Animal: Int] = [:]
        
        for animal in chosenAnimal {
            counts[animal] = (counts[animal] ?? 0) + 1
        }
        
        print(counts)
    }
}



//[PersonalQuiz.Answer(title: "Стейк", animal: PersonalQuiz.Animal.dog),
// PersonalQuiz.Answer(title: "Плавать", animal: PersonalQuiz.Animal.dog),
// PersonalQuiz.Answer(title: "Не замечаю", animal: PersonalQuiz.Animal.turtle)]
