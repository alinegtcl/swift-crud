//
//  main.swift
//  avaliacao-swift
//
//  Created by Aline Gomes Tolentino da Cruz Luisi on 31/10/24.
//

import Foundation

executarPrograma()

func executarPrograma() {
    var continuar = true
    print("--CONTATOS--")
    while continuar {
        mainMenu()
        
        guard let opcao = readLine(), let escolha = Int(opcao) else {
            print("Opção inválida.")
            continue
        }
        
        switch escolha {
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
            continuar = false
            print("Saindo do programa.")
        default:
            print("Opção inválida.")
        }
    }
}

func mainMenu() {
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
