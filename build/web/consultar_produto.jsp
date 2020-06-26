
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%
  if (session.getAttribute("user") == null)
  {
    String address =  "login.jsp";
    response.sendRedirect(address);
  }
%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Consultar Produto</title>
        <link rel="icon" href="/agrotech/favicon.ico">
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/dataTables.bootstrap4.min.css" rel="stylesheet" />
       
        <!-- Código Script -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script>
            $(document).ready(function() {
                $("#consultar").click(function() {
                    event.preventDefault();

                    var consultarTipoProduto = $("#tipoProduto").val();
                    var consultarNomeProduto = $("#nomeProduto").val();
                    var consultarAno = $("#ano").val();
                    var consultarMesSafra = $("#mesSafra").val();

                    $.ajax(
                        {
                            url: "consultarProduto?"+
                            "tipoProduto="+consultarTipoProduto+
                            "&nomeProduto="+consultarNomeProduto+
                            "&ano="+consultarAno+
                            "&mesSafra="+consultarMesSafra,
                            contentType: "charset=UTF-8",
                            success: function(retorno){
                                if (retorno=="ok") {
                                   location.replace("li_consulta_produto.jsp");  //sucesso //success
                                } else {
                                    //erro
                                        $ ("#mostrarErro").html (retorno);
                                        $('#myModal').modal('show'); 
                                }
                            }
                        }
                    );
                });
            });
        </script>

        
    </head>
    <body>
        <%@include file="menu.jsp" %>
            <!-- Fim do menu da esquerda -->
            <div id="layoutSidenav_content">
                <main>
                  
                    <div class="container-fluid">
                        <h1 class="mt-4">Consultar Produto</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="dashboard.jsp">Dashboard</a></li>
                            <li class="breadcrumb-item active">Consultar</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">
                                
                
                                <!-- COMEÇO DO FORM -->

                                <form action="#" method="#">

                                    <div class="form-row">
                                        

                                        <div class="col-md-3">    </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-1" for="tipoProduto">Tipo</label>
                                                <select name="tipoProduto" id="tipoProduto" class="form-control">
                                                    <option value="">Selecione o tipo</option>
                                                    <option value="1">Agricultura</option>
                                                    <option value="2">Pecuária</option>     
                                                </select>
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-1" for="nomeProduto" >Produto</label>
                                                <select name="nomeProduto" id="nomeProduto" class="form-control">
                                                    <option value="">Selecione o nome</option>
                                                    <option value="1">Banana</option>
                                                    <option value="2">Algodão</option>
                                                    <option value="3">Arroz</option>
                                                    <option value="4">Café</option>
                                                    <option value="5">Cana-de-Açúcar</option>
                                                    <option value="6">Feijão</option>
                                                
                                                    
                                                </select>
                                            </div>
                                        </div>
                                        
                                         
                                    </div>
                                    
                                        <div class="col-md-1">    </div>

                                       
                                        <div class="col-md-1">    </div>
                                       
                                        
                                       

                                    <div class="form-row">    
                                        <div class="col-md-3">    </div>
                                        
                                        
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-1" for="mesSafra">Mês da Safra</label>
                                                <input class="form-control py-3" id="mesSafra" name="mesSafra" type="text" placeholder="Digite o mês" onkeypress="return apenasLetras(event);" value=""/>
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="small mb-1" for="ano">Ano</label>
                                                <input class="form-control py-3" id="ano" name="ano" type="text" placeholder="Digite o ano" value=""/>
                                            </div>
                                        </div>
                                       

                                        
                                        </div>


                                          <div class="col-md-1," style="display : flex; justify-content : center; align-items : center; flex-direction : initial; ">
                                            
                                            <div class="form-group mt-4 mb-0"><button id="consultar" class="btn btn-success btn-block" >Consultar</button></div>
                                    
                                    </div>
                                        
                                        <div class="col-md-1">    </div>
                                        
                                        
                                        
                
                                
                                
                                </form>
                                
                                    <div id="myModal" class="modal fade" tabindex="-1" role="dialog">
                                      <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                          <div class="modal-header">
                                            <h5 class="modal-title">Atenção!</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                              <span aria-hidden="true">&times;</span>
                                            </button>
                                          </div>
                                            <div class="modal-body py-5">    
                                              <h6 class="text-danger text-center"> 
                                                  <div class="" id="mostrarErro"></div>
                                              </h6>
                                            </div>
                                          <div class="modal-footer">
                                            <button type="button" class="btn btn-dark" data-dismiss="modal">Fechar</button>
                                          </div>
                                        </div>
                                      </div>
                                    </div> 

                               
                            </div>
                            </main>
                            <footer class="py-4 bg-success mt-auto ">
                                <div class="container-fluid ">
                                    <div class="d-flex align-items-right justify-content-between small">
                                        <div class="text-light">2020 Agrotech Sistema de Unificação de Dados do Agronegócio.</div>
                                    </div>
                                </div>
                            </footer>
                    </div>
                </div>

                <script src="js/jquery-3.4.1.min.js"></script>
                <script src="js/all.min.js"></script>
                <script src="js/scripts.js"></script>
                <script src="js/resilia.js"></script>
                <script src="assets/demo/datatables-demo.js"></script>
                <script src="js/jquery.mask.min.js"></script>
                <script src="js/bootstrap.bundle.min.js"></script>
                <script src="js/dataTables.bootstrap4.min.js"></script>
                <script src="js/validaDados.js"></script>


            </body>
        </html>