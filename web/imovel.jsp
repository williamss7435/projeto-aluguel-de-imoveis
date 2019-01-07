<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="verificar-login.jsp" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Cadastro De Imóveis</title>
  <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/estilo.css">
</head>
<body class="bg-imovel">

  <nav class="navbar navbar-expand-lg navbar-light bg-light barra-navegacao">
    <a class="navbar-brand" href="index.jsp"><img  class="align-top" src="img/logo.png"></a>
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
         <div class="nav-link text-white mr-5 badge badge-warning"><%= "Bem Vindo " + session.getAttribute("nome")%></div>
      </li>
          <h2>Cadastrar Imóvel</h2>
    </ul>
    <a class="nav-link btn btn-danger text-white ml-5" href="logoff.jsp">Sair Do Sistema</a>
  </nav>

  <div class="container mt-3">
    <div class="row">
      <div class="col">

          <form action="gravar-imovel.jsp" method="post">
          <div class="form-row">
            <div class="col">
              <label class="form-control-label" for="codigo">Código</label>
              <input type="number" name="codigo" id="codigo" class="form-control" placeholder="Digite o Código Do Imóvel">
            </div>
            <div class="col">
              <label class="form-control-label" for="cep">CEP</label>
              <input type="text" name="cep" id="cep" class="form-control" placeholder="Digite O CEP Do Imóvel">
            </div>
            <div class="col">
              <label class="form-control-label" for="valorAluguel">Valor Do Aluguel</label>
              <input type="number" min="0.00" max="1000000.00" name="valorAluguel" id="valorAluguel" class="form-control" placeholder="Digite O Valor Do Aluguel">
            </div>
            <div class="col">
              <label class="form-control-label" for="comissao">% Da Comissão</label>
              <input type="number" min="1" max="100" name="comissao" id="comissao" class="form-control" placeholder="De 1% até 100%">
            </div>
          </div><br>

          <div class="form-row">
            <div class="col">
              <label class="form-control-label" for="proprietario">Proprietário</label>
              <input type="text" name="proprietario" id="proprietario" class="form-control" placeholder="Nome Do Proprietário">
            </div>
            <div class="col">
              <label class="form-control-label" for="locatario">Locatário</label>
              <input type="text" name="locatario" id="locatario" class="form-control" placeholder="Nome Do Locatário">
            </div>
            <div class="col">
              <label class="form-control-label" for="endereco">Endereço</label>
              <input type="text" name="endereco" id="endereco" class="form-control" placeholder="Digite o Endereço Do Imóvel">
            </div>
          </div><br>

          <div class="form-row">
            <div class="col">
              <label class="form-control-label" for="data-inicio">Data De Inicio Do Contrato</label>
              <input type="date" name="data-inicio" id="data-inicio" class="form-control" placeholder="Nome Do Proprietário">
            </div>
            <div class="col">
              <label class="form-control-label" for="data-fim">Data De Término Do Contrato</label>
              <input type="date" name="data-fim" id="data-fim" class="form-control" placeholder="Nome Do Locatário">
            </div>
          </div><br>

          <div class="form-control">
            <label class="form-control-label" for="descricao">Descrição</label>
            <textarea class="form-control" id="descricao" name="descricao" rows="2"></textarea><br>
          </div><br>

          <button type="submit" class="btn btn-warning">Cadastrar</button>
          <a href="consultar.jsp" class="btn btn-info">Cancelar</a>
        </form>

      </div>
    </div>
  </div>


  <footer class="fixed-bottom">
    Nome: William Dos Santos Sousa - RGM: 16438639 - Tema: Cadastro De Aluguel De Imóveis
  </footer>
  <script src="lib/jquery-3.2.1.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
