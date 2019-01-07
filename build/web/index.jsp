<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Home</title>
  <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/estilo.css">
</head>
<body class="bg-main">
  <nav class="navbar navbar-expand-lg navbar-light bg-light barra-navegacao">
    <a class="navbar-brand" href="#"><img  class="align-top" src="img/logo.png"></a>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link active" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="cadastro.jsp">Cadastrar Novo Usuário</a>
        </li>
      </ul>
       <% 
            if(session.getAttribute("nome")==null){
                out.println("<form class='form-inline' action='gravar-login.jsp'>");
                    out.println("<input type='text' name='login' id='login' class='form-control mr-2' placeholder='Login'>");
                    out.println("<input type='password' name='senha' id='senha' class='form-control mr-4' placeholder='Senha'>");
                    out.println("<button type='submit' class='btn btn-outline-danger btn-lg'>Login</button>");
                 out.println("</form>");
            }else{
                String nome = session.getAttribute("nome").toString();
                 out.println("<div class='nav-link text-white mr-5 badge badge-warning'> Você Está Logado Como " + nome + "</div>");
                 out.println("<a class='nav-link btn btn-success text-white mr-3'  href='consultar.jsp'>Entrar No Sistema</a>");
                 out.println("<a class='nav-link btn btn-danger text-white'  href='logoff.jsp'>Sair Do Sistema</a>");
            }
       %>
    </div>
  </nav>

  <div class="container box-principal">
    <div class="row justify-content-center">
      <div class="col-auto box-titulo mb-3">
        Sistema De Aluguel De Imóveis
      </div>
      <div class="w-100"></div>
      <div class="col-auto box-login">
        <a href=""> Usuario Padrão: admin \ Senha Padrao: admin</a>
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