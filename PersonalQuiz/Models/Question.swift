//
//  Question.swift
//  PersonalQuiz
//
//  Created by Maks Era on 03.06.2021.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestion() -> [Question] {
        [
            Question(
                title: "Стейк",
                type: .single,
                answers: [
                    Answer(title: "", type: .cat),
                    Answer(title: "", type: .dog)
                ]),
            Question(
                title: "Вождение",
                type: .ranged,
                answers: [
                    Answer(title: "", type: .cat),
                    Answer(title: "", type: .dog)
                ]),
        ]
    }
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Answer {
    let title: String
    let type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
}
