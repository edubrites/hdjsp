<%--
    Document   : cadastrarcli
    Created on : 06/12/2012, 13:34:20
    Author     : egbrites
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="config.css" />
    </head>
    <body>
        <div id="formulario">
        <form name="form1" method="post" action="Salva_dpto.jsp">
            <table>
                <tr>
                    <td colspan="2">
                        <h1>Cadastro de departamento</h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Nome departamento:</label>
                    </td>
                    <td><input type="text" name="nome_dpto" size="45" /></td>
                </tr>
                <tr>
                    <td>
                        <label>Centro de Custo:</label>
                    </td>
                    <td><input type="text" name="centro_custo" size="10" /></td>
                </tr>
                <tr>
                    <td>
                        <label>Site: </label>
                    </td>
                    <td>
                        <select name="cod_site">
               <!-- colocar uma função para listar os sites cadastrados -->
                            <option value="">matriz</option>
                            <option value="">filial 1</option>
                            <option value="">filial 2</option>
                            <option value="">filial 3</option>
                            <option value="">filial 4</option>
                            <option value="">filial 5</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" id="centralizaBotoes">
                        <input type="submit" value="Salvar" class="botao" />
                        <input type="reset" value="Limpar" class="botao" />
                    </td>
                </tr>
            </table>
        </form>
            </div>
    </body>
</html>