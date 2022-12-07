//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Денис Васильев on 02.12.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var resultAnimalLabel: UILabel!
    @IBOutlet var resultDefinitionLabel: UILabel!
    
    
    // MARK: - Public Properties
    var answersChosen: [Answer] = []

    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
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
        
//        print(counts)
        
        let sortedCounts = counts.sorted { $0.value > $1.value }
        print(sortedCounts)
        guard let resultAnimal = sortedCounts.first?.key else { return }
        print(resultAnimal.rawValue)
        print(resultAnimal.definition)
        
        resultAnimalLabel.text = "Вы - \(resultAnimal.rawValue)!"
        resultDefinitionLabel.text = resultAnimal.definition
    }
}



//[PersonalQuiz.Answer(title: "Стейк", animal: PersonalQuiz.Animal.dog),
// PersonalQuiz.Answer(title: "Плавать", animal: PersonalQuiz.Animal.dog),
// PersonalQuiz.Answer(title: "Не замечаю", animal: PersonalQuiz.Animal.turtle)]


//[PersonalQuiz.Animal.turtle: 1, PersonalQuiz.Animal.dog: 2]
//[(key: PersonalQuiz.Animal.dog, value: 2), (key: PersonalQuiz.Animal.turtle, value: 1)]

