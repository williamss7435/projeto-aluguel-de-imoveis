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
  
  <div class="jumbotron jumbotron-fluid mt-5">
    <div class="container">
      <h1 class="display-4">Erro ao Salvar Alteracao No BD</h1>
      Erro: ${param.erro}
      <br><br><a href="index.jsp" class="lead btn btn-danger">Voltar Para A Pagina Inicial</a>
    </div>
  </div>

  <footer class="fixed-bottom">
    Nome: William Dos Santos Sousa - RGM: 16438639 - Tema: Cadastro De Aluguel De Imóveis
  </footer>
  <script src="lib/jquery-3.2.1.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>