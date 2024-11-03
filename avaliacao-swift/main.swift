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
            print("alterar")
        case 3:
            print("apagar")
        case 4:
            showPerson()
        case 5:
            print("exibir todas as pessoas")
        case 6:
            continueControl = false
            print("Saindo do programa.")
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
        print("Erro: Uma pessoa com esse nome já existe.")
        return
    }
    
    print("\nDigite o email:")
    guard let email = readLine(), !email.isEmpty else { return }
    
    print("\nDigite o telefone:")
    guard let phone = readLine(), !phone.isEmpty else { return }
    
    print("\nDigite a idade:")
    guard let age = readLine(), !age.isEmpty else { return }
    
    people[name] = [email, phone, age]
    print("\nPessoa criada com sucesso!")
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
        print("Pessoa não encontrada.")
    }
}
