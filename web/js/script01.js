$(function (){
   $("#mostrar-todos").click(function (){
        processarTodos("P");
   }); 
});

$(function (){
   $("#btn-pesquisa").click(function (){
        processarPesquisar();
   }); 
});

function processarPesquisar(){
    $("#tabela").empty();
    endereco = "pesquisaImovel.jsp";
    saida = "";
    select = $("#opcao-pesquisa").val();
    text = $("#text-pesquisa").val();
    
    $.ajax({
       url: endereco,
       success: function (xml){
           comissao = 0;
          totComissao = 0;
           totAluguel = 0; 
           
           saida += "<table class='table table-hover table-responsive bg-light'>";
                saida += "<thead class='bg-warning'>";
                            saida += "<tr>";
                                    saida += "<th>" + "Código" + "</th>";
                                    saida += "<th>" + "CEP" + "</th>";
                                    saida += "<th>" + "Proprietário" + "</th>";
                                    saida += "<th>" + "Locatário" + "</th>";
                                    saida += "<th>" + "Aluguel" + "</th>";
                                    saida += "<th>" + "Comissão" + "</th>";
                                    saida += "<th>" + "Inicio Do Contrato" + "</th>";
                                    saida += "<th>" + "Fim Do Contrato" + "</th>";
                                    saida += "<th>" + "</th>";
                                    saida += "<th>" + "</th>";
                            saida += "</tr>";
                saida += "</thead>";
                
                 saida += "<tbody>";
                 $(xml).find("imovel").each(function (){
                     if($(this).find(select).text() == text){
                                                   comissao = parseFloat($(this).find("aluguel").text())*parseFloat($(this).find("comissao").text())/100;
                            totComissao += comissao;
                            totAluguel += parseFloat($(this).find("aluguel").text());
                            
                           dadosAlterar = "codigo=" + $(this).find("codigo").text() + "&cep=" + $(this).find("cep").text() + "&proprietario=" + $(this).find("proprietario").text() +
                                     "&locatario=" + $(this).find("locatario").text() + "&aluguel=" + $(this).find("aluguel").text() + "&comissao=" + parseFloat($(this).find("comissao").text()) + "&datainicio=" + $(this).find("datainicio").text() + "&datafim=" + $(this).find("datafim").text()
                                    + "&descricao=" + $(this).find("descricao").text() + "&endereco=" + $(this).find("endereco").text();
                            
                            saida += "<tr>";
                                    saida += "<td>" + $(this).find("codigo").text() + "</td>";
                                    saida += "<td>" +  $(this).find("cep").text() + "</td>";
                                    saida += "<td>" +  $(this).find("proprietario").text() + "</td>";
                                    saida += "<td>" +  $(this).find("locatario").text() + "</td>";
                                    saida += "<td>R$ " +   $(this).find("aluguel").text() + "</td>";
                                    saida += "<td>R$" +  comissao + "</td>";
                                    saida += "<td>" +  $(this).find("datainicio").text() + "</td>";
                                    saida += "<td>" +  $(this).find("datafim").text() + "</td>";
                                    saida += "<td><a href='alterar-imovel.jsp?" + dadosAlterar +"' class='btn btn-warning'>Editar</a></td>";
                                    saida += "<td><a class='btn btn-danger' href='#' onclick='excluir(" + $(this).find("codigo").text() + ")'>Excluir</a></td>";
                            saida += "</tr>"; 
                     }
                  });         
                  saida += "</tbody>";
                
           saida +="</table>";
           
         saida += "<div class='row col-3'>";  
         saida += "<table class='table table-bordered bg-success text-white'>";
                saida += "<thead>";
                            saida += "<tr>";
                                    saida += "<th>" + "Valor Total" + "</th>";
                                    saida += "<th>" + "Comissão Total" + "</th>";
                            saida += "</tr>";
                saida += "</thead>";
                
                 saida += "<tbody>";
                            saida += "<tr>";
                                    saida += "<td>R$ " + totAluguel.toFixed(2) + "</td>";
                                    saida += "<td>R$ " + totComissao.toFixed(2) + "</td>";
                            saida += "</tr>";
                  saida += "</tbody>";
                
           saida +="</table>";
           saida += "</div>";
           
           $("#tabela").append(saida);
       },
       
       error: function (){
           alert("Erro No XML");
       }

    });
}

function processarTodos(){
    $("#tabela").empty();
    endereco = "";
    saida = "";
    
        endereco = "pesquisaImovel.jsp";
 
    
    $.ajax({
       url: endereco,
       success: function (xml){
           comissao = 0;
          totComissao = 0;
           totAluguel = 0; 
           
           saida += "<table class='table table-hover table-responsive bg-light'>";
                saida += "<thead class='bg-warning'>";
                            saida += "<tr>";
                                    saida += "<th>" + "Código" + "</th>";
                                    saida += "<th>" + "CEP" + "</th>";
                                    saida += "<th>" + "Proprietário" + "</th>";
                                    saida += "<th>" + "Locatário" + "</th>";
                                    saida += "<th>" + "Aluguel" + "</th>";
                                    saida += "<th>" + "Comissão" + "</th>";
                                    saida += "<th>" + "Inicio Do Contrato" + "</th>";
                                    saida += "<th>" + "Fim Do Contrato" + "</th>";
                                    saida += "<th>" + "</th>";
                                    saida += "<th>" + "</th>";
                            saida += "</tr>";
                saida += "</thead>";
                
                 saida += "<tbody>";
                 $(xml).find("imovel").each(function (){
                            comissao = parseFloat($(this).find("aluguel").text())*parseFloat($(this).find("comissao").text())/100;
                            totComissao += comissao;
                            totAluguel += parseFloat($(this).find("aluguel").text());
                            
                            dadosAlterar = "codigo=" + $(this).find("codigo").text() + "&cep=" + $(this).find("cep").text() + "&proprietario=" + $(this).find("proprietario").text() +
                                     "&locatario=" + $(this).find("locatario").text() + "&aluguel=" + $(this).find("aluguel").text() + "&comissao=" + parseFloat($(this).find("comissao").text()) + "&datainicio=" + $(this).find("datainicio").text() + "&datafim=" + $(this).find("datafim").text()
                                    + "&descricao=" + $(this).find("descricao").text() + "&endereco=" + $(this).find("endereco").text();
                            
                            saida += "<tr>";
                                    saida += "<td>" + $(this).find("codigo").text() + "</td>";
                                    saida += "<td>" +  $(this).find("cep").text() + "</td>" ;
                                    saida += "<td>" +  $(this).find("proprietario").text() + "</td>";
                                    saida += "<td>" +  $(this).find("locatario").text() + "</td>";
                                    saida += "<td>R$ " +   $(this).find("aluguel").text() + "</td>";
                                    saida += "<td>R$" +  comissao + "</td>";
                                    saida += "<td>" +  $(this).find("datainicio").text() + "</td>";
                                    saida += "<td>" +  $(this).find("datafim").text() + "</td>";
                                    saida += "<td><a href='alterar-imovel.jsp?" + dadosAlterar +"' class='btn btn-warning'>Editar</a></td>";
                                    saida += "<td><a class='btn btn-danger' href='#' onclick='excluir(" + $(this).find("codigo").text() + ")'>Excluir</a></td>";
                            saida += "</tr>";
                  });         
                  saida += "</tbody>";
                
           saida +="</table>";
           
         saida += "<div class='row col-3'>";  
         saida += "<table class='table table-bordered bg-success text-white'>";
                saida += "<thead>";
                            saida += "<tr>";
                                    saida += "<th>" + "Valor Total" + "</th>";
                                    saida += "<th>" + "Comissão Total" + "</th>";
                            saida += "</tr>";
                saida += "</thead>";
                
                 saida += "<tbody>";
                            saida += "<tr>";
                                    saida += "<td>R$ " + totAluguel.toFixed(2) + "</td>";
                                    saida += "<td>R$ " + totComissao.toFixed(2) + "</td>";
                            saida += "</tr>";
                  saida += "</tbody>";
                
           saida +="</table>";
           saida += "</div>";
           
           $("#tabela").append(saida);
       },
       error: function (){
           alert("Erro No XML");
       }

    });
}

function excluir(codigo){
    $("#tabela").empty();
    endereco = "";
    saida = "";
    
        endereco = "excluirImovel.jsp?codigo=" + codigo;
 
    
    $.ajax({
       url: endereco,
       success: function (xml){
           comissao = 0;
          totComissao = 0;
           totAluguel = 0; 
           
           saida += "<table class='table table-hover table-responsive bg-light'>";
                saida += "<thead class='bg-warning'>";
                            saida += "<tr>";
                                    saida += "<th>" + "Código" + "</th>";
                                    saida += "<th>" + "CEP" + "</th>";
                                    saida += "<th>" + "Proprietário" + "</th>";
                                    saida += "<th>" + "Locatário" + "</th>";
                                    saida += "<th>" + "Aluguel" + "</th>";
                                    saida += "<th>" + "Comissão" + "</th>";
                                    saida += "<th>" + "Inicio Do Contrato" + "</th>";
                                    saida += "<th>" + "Fim Do Contrato" + "</th>";
                                    saida += "<th>" + "</th>";
                                    saida += "<th>" + "</th>";
                            saida += "</tr>";
                saida += "</thead>";
                
                 saida += "<tbody>";
                 $(xml).find("imovel").each(function (){
                            comissao = parseFloat($(this).find("aluguel").text())*parseFloat($(this).find("comissao").text())/100;
                            totComissao += comissao;
                            totAluguel += parseFloat($(this).find("aluguel").text());
                            
                           dadosAlterar = "codigo=" + $(this).find("codigo").text() + "&cep=" + $(this).find("cep").text() + "&proprietario=" + $(this).find("proprietario").text() +
                                     "&locatario=" + $(this).find("locatario").text() + "&aluguel=" + $(this).find("aluguel").text() + "&comissao=" + parseFloat($(this).find("comissao").text()) + "&datainicio=" + $(this).find("datainicio").text() + "&datafim=" + $(this).find("datafim").text()
                                    + "&descricao=" + $(this).find("descricao").text() + "&endereco=" + $(this).find("endereco").text();
                            
                            saida += "<tr>";
                                    saida += "<td>" + $(this).find("codigo").text() + "</td>";
                                    saida += "<td>" +  $(this).find("cep").text() + "</td>";
                                    saida += "<td>" +  $(this).find("proprietario").text() + "</td>";
                                    saida += "<td>" +  $(this).find("locatario").text() + "</td>";
                                    saida += "<td>R$ " +   $(this).find("aluguel").text() + "</td>";
                                    saida += "<td>R$" +  comissao + "</td>";
                                    saida += "<td>" +  $(this).find("datainicio").text() + "</td>";
                                    saida += "<td>" +  $(this).find("datafim").text() + "</td>";
                                    saida += "<td><a href='alterar-imovel.jsp?" + dadosAlterar +"' class='btn btn-warning'>Editar</a></td>";
                                    saida += "<td><a class='btn btn-danger' href='#' onclick='excluir(" + $(this).find("codigo").text() + ")'>Excluir</a></td>";
                            saida += "</tr>";
                  });         
                  saida += "</tbody>";
                
           saida +="</table>";
           
         saida += "<div class='row col-3'>";  
         saida += "<table class='table table-bordered bg-success text-white'>";
                saida += "<thead>";
                            saida += "<tr>";
                                    saida += "<th>" + "Valor Total" + "</th>";
                                    saida += "<th>" + "Comissão Total" + "</th>";
                            saida += "</tr>";
                saida += "</thead>";
                
                 saida += "<tbody>";
                            saida += "<tr>";
                                    saida += "<td>R$ " + totAluguel.toFixed(2) + "</td>";
                                    saida += "<td>R$ " + totComissao.toFixed(2) + "</td>";
                            saida += "</tr>";
                  saida += "</tbody>";
                
           saida +="</table>";
           saida += "</div>";
           
           $("#tabela").append(saida);
       },
       error: function (){
           alert("Erro No XML");
       }

    });
}