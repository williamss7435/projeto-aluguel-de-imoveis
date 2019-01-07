<%@include file="conecta.jsp" %>
<%@include file="verificar-login.jsp" %>
<!DOCTYPE html>
<html lang="pt-br">
<title>Alterar Cadastro</title>
<link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/estilo.css">
</head>
<body class="bg-red">

  <nav class="navbar navbar-expand-lg navbar-light bg-light barra-navegacao">
    <a class="navbar-brand" href="index.jsp"><img  class="align-top"src="img/logo.png"></a>
    <h2>Alterar Dados do Usuario(a) <%= session.getAttribute("nome") %></h2> 
    <a class="nav-link btn btn-danger text-white ml-5" href="logoff.jsp">Sair Do Sistema</a>
  </nav>

  <div class="container mt-3">
    <div class="row">
      <div class="col">

          <form action="gravar-alteracao-usuario.jsp" method="post">
          <div class="form-group">
            <div class="form-group">
              <label class="form-control-label" for="nome">Nome</label>
              <input type="text" name="nome" id="nome" class="form-control" placeholder="Digite o Seu Nome Completo" value="<%= session.getAttribute("nome") %>">
            </div>
          </div><br>

          <div class="form-group">
            <div class="form-group">
              <label class="form-control-label" for="cpf">CPF (Não é Possivel Alterar Esse Campo)</label>
              <input type="text" name="cpf" id="cpf" class="form-control" readonly placeholder="Digite o Seu CPF" value="<%= session.getAttribute("cpf") %>">
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
              <input type="email" name="email" id="email" class="form-control" placeholder="exemplo@exemplo.com" value="<%= session.getAttribute("email") %>">
            </div>
            <div class="col">
              <label class="form-control-label" for="creci">CRECI</label>
              <input type="text" name="creci" id="creci" class="form-control" placeholder="Digite o Seu CRECI" value="<%= session.getAttribute("creci") %>">
            </div>
          </div><br>

          <button type="submit" class="btn btn-danger">Alterar</button>
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