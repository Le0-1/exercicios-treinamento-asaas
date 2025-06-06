package com.exercise

class CustomerController {
    def index() {
        // exibe o formulário
    }

    def save() {
        def customer = new Customer(params)

        if (!customer.save()) {
            println "Erro ao salvar cliente!"
            println "Dados recebidos: ${params}"
            flash.message = "Erro ao salvar o usuário!"
            redirect(action: "index")
            return
        } 
        
        println "Cliente salvo com sucesso!"
        println "${customer.dump()}"
        flash.message = "Usuário cadastrado com sucesso!"
        redirect(action: "index")
    }
}