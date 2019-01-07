<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Alterar Cadastro De Imóveis</title>
        <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilo.css">
    </head>
    <body class="bg-imovel-red">

        <nav class="navbar navbar-expand-lg navbar-light bg-light barra-navegacao">
            <a class="navbar-brand" href="index.jsp"><img  class="align-top" src="img/logo.png"></a>
            <div class="nav-link text-white mr-5 badge badge-warning"><%= "Bem Vindo " + session.getAttribute("nome")%></div>
            <h2>Alteração De Dados Do Imovél</h2>
             <a class="nav-link btn btn-danger text-white ml-5 " href="logoff.jsp">Sair Do Sistema</a>
        </nav>

        <div class="container mt-3">
            <div class="row">
                <div class="col">

                    <form action="gravar-alteracao-imovel.jsp" method="post">
                        <input type="hidden" id="codigo" name="codigo" class="form-control" value="${param.codigo}">
                        <div class="form-row">
                            <div class="col">
                                <label class="form-control-label" for="cep">CEP</label>
                                <input type="text" name="cep" id="cep" class="form-control" placeholder="Digite O CEP Do Imóvel" value="${param.cep}">
                            </div>
                            <div class="col">
                                <label class="form-control-label" for="valorAluguel">Valor Do Aluguel</label>
                                <input type="number" min="0.00" max="1000000.00" name="valorAluguel" id="valorAluguel" class="form-control" placeholder="Digite O Valor Do Aluguel" value="${param.aluguel}">
                            </div>
                            <div class="col">
                                <label class="form-control-label" for="comissao">Comissão</label>
                                <input type="number" min="1" max="100" name="comissao" id="comissao" class="form-control" placeholder="Porcertagem Da Comissão" value="${param.comissao}">
                            </div>
                        </div><br>

                        <div class="form-row">
                            <div class="col">
                                <label class="form-control-label" for="proprietario">Proprietário</label>
                                <input type="text" name="proprietario" id="proprietario" class="form-control" placeholder="Nome Do Proprietário" value="${param.proprietario}">
                            </div>
                            <div class="col">
                                <label class="form-control-label" for="locatario">Locatário</label>
                                <input type="text" name="locatario" id="locatario" class="form-control" placeholder="Nome Do Locatário" value="${param.locatario}">
                            </div>
                            <div class="col">
                                <label class="form-control-label" for="endereco">Endereço</label>
                                <input type="text" name="endereco" id="endereco" class="form-control" placeholder="Digite o Endereço Do Imóvel" value="${param.endereco}">
                            </div>
                        </div><br>

                        <div class="form-row">
                            <div class="col">
                                <label class="form-control-label" for="data-inicio">Data De Inicio Do Contrato</label>
                                <input type="date" name="data-inicio" id="data-inicio" class="form-control" value="${param.datainicio}">
                            </div>
                            <div class="col">
                                <label class="form-control-label" for="data-fim">Data De Término Do Contrato</label>
                                <input type="date" name="data-fim" id="data-fim" class="form-control" value="${param.datafim}">
                            </div>
                        </div><br>

                        <div class="form-control">
                            <label class="form-control-label" for="descricao">Descrição</label>
                            <textarea class="form-control" id="descricao" name="descricao" rows="2">${param.descricao}</textarea><br>
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