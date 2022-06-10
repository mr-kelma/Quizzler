//
//  QuizBrain.swift
//  Quizzler
//
//  Created by Valery Keplin on 9.06.22.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
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
    
    mutating func nextQestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].question
    }
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func progress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
}
