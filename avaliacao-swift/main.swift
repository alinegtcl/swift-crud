//
//  main.swift
//  avaliacao-swift
//
//  Created by Aline Gomes Tolentino da Cruz Luisi on 31/10/24.
//

import Foundation

var people: [String: [String]] = [:]
runProgram()

func runProgram() {
    var continueControl = true
    print("--CONTATOS--")
    while continueControl {
        showMenu()
        
        guard let option = readLine(), let choice = Int(option) else {
            print("Opção inválida.")
            continue
        }
        
        switch choice {
        case 1:
            createPerson()
        case 2:
            updatePerson()
        case 3:
            deletePerson()
        case 4:
            showPerson()
        case 5:
            showAllPeople()
        case 6:
            continueControl = false
            print("Programa finalizado.")
        default:
            print("Opção inválida.")
        }
    }
}

func showMenu() {
    print("""
    
    -Opções do Menu-
    1. Incluir Pessoa
    2. Alterar Pessoa
    3. Apagar Pessoa
    4. Exibir Pessoa pelo Nome
    5. Exibir todas as Pessoas
    6. Sair
    
    Escolha uma opção:
    """)
}

func createPerson() {
    print("\nDigite o nome:")
    guard let name = readLine(), !name.isEmpty else { return }
    
    if people.keys.contains(name) {
        print("Já existe uma pessoa com esse nome.")
        return
    }
    
    print("\nDigite o email:")
    guard let email = readLine(), !email.isEmpty else { return }
    
    print("\nDigite o telefone:")
    guard let phone = readLine(), !phone.isEmpty else { return }
    
    print("\nDigite a idade:")
    guard let age = readLine(), !age.isEmpty else { return }
    
    people[name] = [email, phone, age]
    print("\nPessoa adicionada com sucesso!")
}

func updatePerson() {
    print("\nDigite o nome da pessoa que deseja alterar:")
    guard let name = readLine(), !name.isEmpty else { return }
    
    if let _ = people[name] {
        print("\nDigite o novo email:")
        guard let newEmail = readLine(), !newEmail.isEmpty else { return }
        
        print("\nDigite o novo telefone:")
        guard let newPhone = readLine(), !newPhone.isEmpty else { return }
        
        print("\nDigite a nova idade:")
        guard let newAge = readLine(), !newAge.isEmpty else { return }
        
        people[name] = [newEmail, newPhone, newAge]
        print("\nDados atualizados com sucesso!")
    } else {
        print("\nPessoa não encontrada.")
    }
}

func deletePerson() {
    print("\nDigite o nome da pessoa que deseja apagar:")
    guard let name = readLine(), !name.isEmpty else { return }
    
    if people.removeValue(forKey: name) != nil {
        print("\nPessoa removida com sucesso!")
    } else {
        print("\nPessoa não encontrada.")
    }
}

func showPerson() {
    print("Digite o nome para exibir:")
    guard let name = readLine(), !name.isEmpty else { return }
    
    if let details = people[name] {
        print("\nNome: \(name)")
        print("Email: \(details[0])")
        print("Telefone: \(details[1])")
        print("Idade: \(details[2])")
    } else {
        print("\nPessoa não encontrada.")
    }
}

func showAllPeople() {
    if people.isEmpty {
        print("\nNão há pessoas cadastradas.")
    } else {
        print("\nDados de todas as pessoas cadastradas:")
        for (name, details) in people {
            print("\nNome: \(name)")
            print("Email: \(details[0])")
            print("Telefone: \(details[1])")
            print("Idade: \(details[2])")
        }
    }
}
