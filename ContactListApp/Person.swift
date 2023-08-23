//
//  Contact.swift
//  ContactListApp
//
//  Created by Aleksey Vinogradov on 22.08.2023.
//


struct Person {
    let name: String
    let surname: String
    let email: String
    let phonenumber: String
    
    var title: String {
        "\(name) \(surname)"
    }
    
    static func getContacts() -> [Person] {
        let data = DataStore()

        data.names = data.names.shuffled()
        data.surnames = data.surnames.shuffled()
        data.emails = data.emails.shuffled()
        data.phonenumbers = data.phonenumbers.shuffled()

        let persons: [Person] = (0 ..< data.names.count).compactMap { _ in
            if
                !data.names.isEmpty,
                !data.surnames.isEmpty,
                !data.emails.isEmpty,
                !data.phonenumbers.isEmpty {
                    return Person(
                        name: data.names.removeLast(),
                        surname: data.surnames.removeLast(),
                        email: data.emails.removeLast(),
                        phonenumber: data.phonenumbers.removeLast()
                    )
            }
            return nil
        }
        
        return persons
    }
}

class DataStore {
    var names = [
        "Jonh",
        "Sharon",
        "Aaron",
        "Steven",
        "Nicola",
        "Ted",
        "Bruce",
        "Carl",
        "Allan"
    ]
    var surnames = [
        "Murphy",
        "Jankin",
        "Williams",
        "Black",
        "Robertson",
        "Butler",
        "Isaacson",
        "Smith",
        "Pennyworth"
    ]
    var emails = [
        "wwww@mail.ru",
        "qqwer@mail.ru",
        "hhghh@mail.ru",
        "non@mail.ru",
        "27kut@mail.ru",
        "teng@mail.ru",
        "chung@mail.ru",
        "youlo@mail.ru",
        "121@mail.ru"
    ]
    var phonenumbers = [
        "111222333",
        "656787909",
        "543098657",
        "356795873",
        "243564788",
        "77577577",
        "865403221",
        "658959598",
        "000111444"
    ]
}


