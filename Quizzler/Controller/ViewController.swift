//
//  ViewController.swift
//  Quizzler
//
//  Created by Valery Keplin on 8.06.22.
//

import UIKit

var questionNumber = 0



class ViewController: UIViewController {
    
    struct Question {
        let text: String
        var answer: String
        
        init(q: String, a: String) {
            text = q
            answer = a
        }
    }
    
    let quiz = [
        Question(q: "Отелло задушил Дездемону", a: "Правда"),
        Question(q: "Нервные клетки не восстанавливаются", a: "Ложь"),
        Question(q: "Хамелеоны мимикрируют под окружающую среду, чтобы спрятаться от хищников", a: "Ложь"),
        Question(q: "Когда леммингов становится слишком много, они не совершают массовое самоубийство", a: "Правда"),
        Question(q: "У человека пять чувств", a: "Ложь"),
        Question(q: "Если дождевого червя разрубить пополам, из обеих половинок вырастут новые черви", a: "Ложь"),
        Question(q: "Мы используем только 5-10 процентов мозга", a: "Ложь"),
        Question(q: "Молния может ударить дважды в одно место", a: "Правда"),
        Question(q: "Мышцы болят после тренировок, потому что в них скапливается молочная кислота", a: "Ложь"),
        Question(q: "Человек должен выпивать ежедневно минимум 2 литра воды", a: "Ложь")
    ]
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressView: UIProgressView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let actualAnswer = quiz[questionNumber - 1].answer
        print(questionNumber)
        
        
        if userAnswer == actualAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        updateUI()
        
    }
    
    func updateUI() {
        if questionNumber + 1 <= quiz.count {
            questionLabel.text = quiz[questionNumber].text
            questionNumber += 1
        } else {
            questionNumber = 0
            questionLabel.text = quiz[questionNumber].text
        }
    }
    
}
