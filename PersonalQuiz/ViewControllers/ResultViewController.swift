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
    
    // MARK: - Private Properties
    private var chosenAnimals: [Animal] = []
    private var animalsCount: [Animal: Int] = [:]
    
    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        setResult()
    }
    
    // MARK: - IB Actions
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
}
    
// MARK: - Private Methods
extension ResultViewController {
    private func setResult() {
        for chosen in answersChosen {
            chosenAnimals.append(chosen.animal)
        }
        
        for animal in chosenAnimals {
            animalsCount[animal] = (animalsCount[animal] ?? 0) + 1
        }
        
        let sortedAnimalsByCount = animalsCount.sorted { $0.value > $1.value }
        
        guard let resultAnimal = sortedAnimalsByCount.first?.key else { return }
        resultAnimalLabel.text = "Вы - \(resultAnimal.rawValue)!"
        resultDefinitionLabel.text = resultAnimal.definition
    }
}
