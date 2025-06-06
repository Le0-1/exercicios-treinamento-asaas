<!doctype html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Customer Form</title>
    <link 
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" 
        rel="stylesheet" 
        integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" 
        crossorigin="anonymous"
    >
    <style>
        .max-w-400 {
            max-width: 400px;
            width: 100%;
        }
    </style>
  
  </head>
  
  <body>
    <div class="h-100 p-5 text-white bg-primary mb-3 d-flex justify-content-center">
        <h1 class="display-5">
            Cadastro Usuário
        </h1>
    </div>

    <g:if test="${flash.message}">
        <div class="alert alert-info text-center mb-3">
            ${flash.message}
        </div>
    </g:if>
    <div class="container d-flex justify-content-center"> 

        <form  method="post" action="${createLink(controller: 'customer', action: 'save')}" 
            class="mt-4 col-12 col-lg-10 col-xl-8"> 

            <div class="row g-3 mb-3">

            <div class="col-md-6">
                <label for="nome" class="form-label">Nome</label>
                <input required type="text" class="form-control max-w-400" id="nome" name="nome">
            </div>

            <div class="col-md-6">
                <label for="cpf" class="form-label">CPF</label>
                <input required type="text" class="form-control max-w-400" id="cpf" name="cpf">
            </div>

            </div>

        
            <div class="row g-3 mb-3">

            <div class="col-md-6">
                <label for="telefone" class="form-label">Telefone</label>
                <input required type="tel" class="form-control max-w-400" id="telefone" name="telefone">
            </div>

            <div class="col-md-6">
                <label for="email" class="form-label">Email</label> 
                <input required type="email" class="form-control max-w-400" id="email" name="email">
            </div>

            </div>
            
        
            <div class="mb-3 align-self-start">
            <label for="cep" class="form-label">CEP</label>
            <input required type="text" class="form-control max-w-400" id="cep" name="cep">
            <div id="cep-error" class="text-danger mt-1"></div>
            </div>

            <div class="row g-3 mb-3">

            <div class="col-md-6">
                <label for="logradouro" class="form-label">Logradouro</label>
                <input required type="text" class="form-control max-w-400" id="logradouro" name="logradouro">
            </div>

            <div class="col-md-6">
                <label for="bairro" class="form-label">Bairro</label>
                <input required type="text" class="form-control max-w-400" id="bairro" name="bairro">
            </div>

            </div>

            <div class="row g-3 mb-3">

            <div class="col-md-6">
                <label for="cidade" class="form-label">Cidade</label>
                <input required type="text" class="form-control max-w-400" id="cidade" name="cidade">
            </div>

            <div class="col-md-6">
                <label for="estado" class="form-label">Estado</label>
                <input required type="text" class="form-control max-w-400" id="estado" name="estado">
            </div>

            </div>

            <button type="submit" class="btn btn-primary w-100">Enviar</button>
      
      </form>

    </div>
    
    <script 
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" 
        crossorigin="anonymous">
    </script>
    <%-- Importando o javacript para encontrar o CEP do usuário --%>
    <asset:javascript src="cep.js"/>
  </body>
</html>