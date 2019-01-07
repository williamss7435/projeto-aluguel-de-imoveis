<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Cadastro De Usuario</title>
  <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/estilo.css">
</head>
<body class="bg-black">

  <nav class="navbar navbar-expand-lg navbar-light bg-light barra-navegacao">
    <a class="navbar-brand" href="index.jsp"><img  class="align-top" src="img/logo.png"></a>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="#">Cadastrar Novo Usuário</a>
        </li>
      </ul>
          <% if(session.getAttribute("nome") != null) out.println("<a href='logoff.jsp' class='btn btn-danger'>Sair Do Sistema</a>");%>
    </div>
  </nav>

  <div class="container mt-3">
    <div class="row">
      <div class="col">

          <form action="gravar-usuario.jsp" method="post">
          <div class="form-group">
            <div class="form-group">
              <label class="form-control-label" for="nome">Nome</label>
              <input type="text" name="nome" id="nome" class="form-control" placeholder="Digite o Seu Nome Completo">
            </div>
          </div><br>

          <div class="form-group">
            <div class="form-group">
              <label class="form-control-label" for="cpf">CPF</label>
              <input type="number" name="cpf" id="cpf" class="form-control" placeholder="Digite o Seu CPF">
            </div>
          </div><br>

          <div class="form-row">
            <div class="col">
              <label class="form-control-label" for="usuario">Usuário</label>
              <input type="text" name="usuario" id="usuario" class="form-control" placeholder="Digite o Seu Login">
            </div>
            <div class="col">
              <label class="form-control-label" for="senha">Senha</label>
              <input type="password" name="senha" id="senha" class="form-control" placeholder="Digite a Sua Senha">
            </div>
          </div><br>

          <div class="form-row">
            <div class="col">
              <label class="form-control-label" for="email">E-mail</label>
              <input type="email" name="email" id="email" class="form-control" placeholder="exemplo@exemplo.com">
            </div>
            <div class="col">
              <label class="form-control-label" for="creci">CRECI</label>
              <input type="number" name="creci" id="creci" class="form-control" placeholder="Digite o Seu CRECI">
            </div>
          </div><br>
          
          <button type="submit" class="btn btn-warning text-white">Cadastrar</button>
          <% if(session.getAttribute("nome") != null) out.println("<a href='consultar.jsp' class='btn btn-info'>Voltar</a>");%>
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
