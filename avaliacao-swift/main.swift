//
//  main.swift
//  avaliacao-swift
//
//  Created by Aline Gomes Tolentino da Cruz Luisi on 31/10/24.
//

import Foundation

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
            print("incluir")
        case 2:
            print("alterar")
        case 3:
            print("apagar")
        case 4:
            print("exibir uma pessoa")
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
