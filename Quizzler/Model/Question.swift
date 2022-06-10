//
//  Question.swift
//  Quizzler
//
//  Created by Valery Keplin on 9.06.22.
//

import UIKit

struct Question {
    let question: String
    let answer: String
    
    init(q: String, a: String) {
        question = q
        answer = a
    }
}
