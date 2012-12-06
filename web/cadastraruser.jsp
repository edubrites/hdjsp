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
<!--        <script language="JavaScript" type="text/javascript" src="MascaraValidacao.js"></script>-->
        <script type="text/javascript" src="jquery.maskedinput.js"></script>
        <script type="text/javascript" src="jquery-1.8.3.min.js"></script>
        <script type="text/javascript">
		$(function() {
			$('input[@name=data]').mask('99/99/9999');
			$('input[@name=cep]').mask('99999-999');
			$('input[@name=cpf]').mask('999.999.999-99');
			$('input[@name=placa_veiculo]').mask('aaa-9999');
		});
	</script>
    </head>
    <body>
        <div id="formulario">
        <form name="formU" method="post" action="Salva_usuario.jsp">
            <table>
                <tr>
                    <td colspan="2">
                        <h1>Cadastro de usuário</h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Nome completo:</label>
                    </td>
                    <td><input type="text" name="nome_usuario" size="60" /></td>
                </tr>
                <tr>
                    <td>
                        <label>CPF: </label>
                    </td>
                    <td><input type="text" name="cpf" size="45" /></td>
                </tr>
                <tr>
                    <td>
                        <label>RG: </label>
                    </td>
                    <td><input type="text" name="rg" size="45" /></td>
                </tr>
                <tr>
                <tr>
                    <td>
                        <label>Telefone: </label>
                    </td>
                    <td><input type="text" name="telefone" size="25" /></td>
                </tr>
                <tr>
                    <td>
                        <label>Endereço:</label>
                    </td>
                    <td><input type="text" name="endereco" size="60" /></td>
                </tr>
                <tr>
                    <td>
                        <label>Bairro:</label>
                    </td>
                    <td><input type="text" name="bairro" size="30" /></td>
                </tr>

                <tr>
                    <td>
                        <label>Cidade:</label>
                    </td>
                    <td><input type="text" name="cidade" size="30" /></td>
                </tr>

                <tr>
                    <td>
                        <label>Estado:</label>
                    </td>
                    <td><input type="text" name="estado" size="20" /></td>
                </tr>

                <tr>
                    <td>
                        <label>CEP:</label>
                    </td>
                    <td><input type="text" name="cep" size="10"/></td>
                </tr>
                <tr>
                    <td>
                        <label>E-mail:</label>
                    </td>
                    <td><input type="text" name="email" size="50"/></td>
                </tr>
                <tr>
                    <td>
                        <label>Login:</label>
                    </td>
                    <td><input type="text" name="login" size="30"/></td>
                </tr>
                <tr>
                    <td>
                        <label>senha:</label>
                    </td>
                    <td><input type="text" name="senha" size="20"/></td>
                </tr>
                <tr>
                    <td>
                        <label>Perfil:</label>
                    </td>
                    <td><input type="text" name="perfil" size="30"/></td>
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