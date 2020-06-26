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
        <title>Listar Imóvel Rural</title>
        <link rel="icon" href="/agrotech/favicon.ico">
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/dataTables.bootstrap4.min.css" rel="stylesheet" />
        
       
    </head>
    <body>
        <%@include file="menu.jsp" %>
            <!-- Fim do menu da esquerda -->
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Listagem de Imóvel Rural</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="dashboard.jsp">Dashboard</a></li>
                            <li class="breadcrumb-item active">Listagem de Imóveis</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-body">

                                <div class="card mb-4">
                                    <div class="card-header"><i class="fas fa-table mr-1"></i>Lista de Imóveis</div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" cellpading="3" border="1">
                                                <thead>
                                                    <tr>
                                                        <th>Inscrição</th>
                                                        <th>Nirf</th>
                                                        <th>Situação</th>
                                                        <th>Propri.</th>
                                                        <th>Ocupação</th>
                                                        <th>Atuação</th>
                                                        <th>Geo-ref</th>
                                                        <th>Reserva</th>
                                                        <th>Agricul.</th>
                                                        <th>Pecuária</th>
                                                    </tr>
                                                </thead>
                                                <tfoot>
                                                    <tr>
                                                        <th>Inscrição</th>
                                                        <th>Nirf</th>
                                                        <th>Situação</th>
                                                        <th>Propri.</th>
                                                        <th>Ocupação</th>
                                                        <th>Atuação</th>
                                                        <th>Geo-ref</th>
                                                        <th>Reserva</th>
                                                        <th>Agricul.</th>
                                                        <th>Pecuária</th>
                                                    </tr>
                                                </tfoot>
                                                <tbody>
                                                    <tr>
                                                        <td>182134236</td>
                                                        <td>9144006682</td>
                                                        <td>ativo</td>
                                                        <td>comprada</td>
                                                        <td>arrendada</td>
                                                        <td>externo</td>
                                                        <td>20</td>
                                                        <td>5</td>
                                                        <td>7</td>
                                                        <td>0</td>
                                                    </tr>
                                                    
                                                    <tr>
                                                        <td>182134236</td>
                                                        <td>9434323466</td>
                                                        <td>ativo</td>
                                                        <td>comprada</td>
                                                        <td>arrendada</td>
                                                        <td>ambos</td>
                                                        <td>40</td>
                                                        <td>15</td>
                                                        <td>10</td>
                                                        <td>15</td>
                                                    </tr>
                                                    <tr>
                                                        <td>207362654</td>
                                                        <td>8660356661</td>
                                                        <td>ativo</td>
                                                        <td>herdada</td>
                                                        <td>arrendada</td>
                                                        <td>interno</td>
                                                        <td>5</td>
                                                        <td>1</td>
                                                        <td>0</td>
                                                        <td>2</td>
                                                    </tr>
                                                    <tr>
                                                       <td>210210946</td>
                                                        <td>7453307956</td>
                                                        <td>ativo</td>
                                                        <td>herdada</td>
                                                        <td>exploração própria</td>
                                                        <td>externo</td>
                                                        <td>7</td>
                                                        <td>1</td>
                                                        <td>1</td>
                                                        <td>3</td>
                                                    </tr>
                                                    <tr>
                                                        <td>242595831</td>
                                                        <td>9476057816</td>
                                                        <td>ativo</td>
                                                        <td>comprada</td>
                                                        <td>exploração própria</td>
                                                        <td>interno</td>
                                                        <td>2</td>
                                                        <td>0.2</td>
                                                        <td>1</td>
                                                        <td>0</td>
                                                    </tr>

                                                    
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <button class="btn btn-info" onclick="printData()">Imprimir Tabela</button>
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
    </body>
</html>
