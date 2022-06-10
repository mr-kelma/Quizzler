//
//  ViewController.swift
//  Quizzler
//
//  Created by Valery Keplin on 8.06.22.
//

import UIKit

var quizBrain = QuizBrain()

class ViewController: UIViewController {
    
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
        let userGotItRight = quizBrain.checkAnswer(sender.currentTitle!)
        
        userGotItRight ? (sender.backgroundColor = UIColor.green) : (sender.backgroundColor = UIColor.red)
            
        quizBrain.nextQestion()
        
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        scoreLabel.text = "Score: \(quizBrain.score)"
        questionLabel.text = quizBrain.getQuestionText()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressView.progress = quizBrain.progress()
    }
}
