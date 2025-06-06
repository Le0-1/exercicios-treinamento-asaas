package com.exercise

class Customer {
    String cpf
    String cep
    String nome
    String telefone
    String email
    String logradouro
    String cidade
    String estado
    String bairro

    static constraints = {
        cpf blank: false, size: 11..11
        cep blank: false, size: 8..8
        email email:true, blank: false
        telefone size: 9..11, blank: false

        nome blank: false
        logradouro blank: false
        cidade blank: false
        estado blank: false
        bairro blank: false
    }
}
