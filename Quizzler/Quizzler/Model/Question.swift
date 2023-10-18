//
//  Question.swift
//  Quizzler
//
//  Created by Nuhu Sulemana on 12/10/2023.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
