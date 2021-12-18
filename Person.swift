//
//  Person.swift
//  Simple Login Form
//
//  Created by Victor on 17.12.2021.
//

struct Person {
    var user: Credential
    let firstname: String
    let lastname: String
    var fullname: String {
        firstname + " " + lastname
    }
    let university: String
    let experience: Company
    let position: Position
    
    static func getPerson() -> [Person] {
        [ Person(user:
            Credential(login: "Victor", password: "qwerty"),
                 firstname: "Victor",
                 lastname: "Savko",
                 university: "RSREU",
                 experience: Company(
                    title: "State company",
                    position: .secEngineer,
                    city: "Moscow",
                    workExperience: "2016 - Present"),
                position: .networkEngineer)
        ]
    }
}

struct Credential {
    let login: String
    let password: String
    }
struct Company {
    let title: String
    let position: Position
    let city: String
    let workExperience: String
}

enum Position: String {
    case developer = "IOS developer"
    case secEngineer = "Security engineer"
    case networkEngineer = "Network engineer"
}


