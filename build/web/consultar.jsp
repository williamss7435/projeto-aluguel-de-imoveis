<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conecta.jsp" %>
<%@include file="verificar-login.jsp" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Consulta</title>
        <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilo.css">
        <script src="lib/jquery-3.2.1.min.js"></script>
        <script src="js/script01.js" type="text/javascript"></script>
    </head>
    <body class="bg-imovel">

        <nav class="navbar navbar-expand-lg navbar-light bg-light barra-navegacao">
            <a class="navbar-brand" href="index.jsp"><img  class="align-top"src="img/logo.png"></a>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <div class="nav-link text-white mr-5 badge badge-warning"><%= "Bem Vindo " + session.getAttribute("nome")%></div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-primary mr-2 text-white" href="imovel.jsp">Cadastrar Imóvel</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-primary mr-2 text-white" href="alterar-cadastro.jsp">Alterar Dados Do Usuário</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-primary mr-2 text-white" href="cadastro.jsp">Cadastrar Novo Usuario</a>
                    </li>
                </ul>
                <a class="nav-link btn btn-danger text-white ml-5 " href="logoff.jsp">Sair Do Sistema</a>
            </div>
        </nav>

        <div class="w-100"></div>

        <div class="container">
            <div class="row mt-3">
                <div class="col-4">
                    <button class="mr-2 btn btn-info mr-5" id="mostrar-todos" name="mostrar-todos">Mostrar Todos</button>
                </div>
                <div class="col-7">
                    <div class="input-group">
                        <input  id="text-pesquisa" class="form-control" type="text" placeholder="Digite o Item a Pesquisar">
                        <select id="opcao-pesquisa" name="opcao-pesquisa" class="form-control">
                            <option value="codigo">Código</option>
                            <option value="cep">CEP</option>
                            <option value="proprietario">Proprietário</option>
                            <option value="locatario">Locatário</option>
                        </select>
                        <div class="input-group-btn">
                            <button class="mr-2 btn btn-info mr-5" id="btn-pesquisa" name="btn-pesquisa">Pesquisar</button>
                        </div>
                    </div>


                </div>
            </div>

        </div>


        <div class="container-fluid mt-3">
            <div class="row">
                <div class="col">
                    <div id="tabela"></div>
                </div>
            </div>
        </div>


        <footer class="fixed-bottom">
            Nome: William Dos Santos Sousa - RGM: 16438639 - Tema: Cadastro De Aluguel De Imóveis
        </footer>
    </body>
</html>
