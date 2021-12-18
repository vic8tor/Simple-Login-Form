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
    let city: String
    let firstEducation: Organization
    let secondEducation: Organization
    let experience: Organization
    let position: Position
    
    static func getPerson() -> [Person] {
        [
            Person(
                user: Credential(
                    login: "Victor",
                    password: "1"),
                 firstname: "Victor",
                 lastname: "Savko",
                 city: "Moscow",
                 firstEducation: Organization(
                    name: "RSREU",
                    position: .networkEngineer,
                    city: "Ryazan",
                    yearsExperience: "2010 - 2015"),
                secondEducation: Organization(
                    name: "Switbook.ru",
                    position: .developer,
                    city: "Moscow",
                    yearsExperience: "2020 - Present"),
                 experience: Organization(
                    name: "State company",
                    position: .secEngineer,
                    city: "Moscow",
                    yearsExperience: "2016 - Present"),
                 position: .developer)
        ]
    }
}

struct Credential {
    let login: String
    let password: String
    }

struct Organization {
    let name: String
    let position: Position
    let city: String
    let yearsExperience: String
}

enum Position: String {
    case developer = "IOS developer"
    case secEngineer = "Security engineer"
    case networkEngineer = "Network engineer"
}


