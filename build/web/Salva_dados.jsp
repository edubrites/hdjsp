<%-- 
    Document   : Salva_dados
    Created on : 17/09/2012, 20:12:14
    Author     : Aluno
--%>       
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int id;
            String nome, endereco;
            double renda;
            id = Integer.parseInt(request.getParameter("id"));
            nome = request.getParameter("nome");
            endereco = request.getParameter("endereco");
            renda = Double.parseDouble(request.getParameter("renda"));

            String sql = "insert into Cliente values(" + id + ",'" + nome + "','" + endereco + "'," + renda + ")";

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/site", "root", "");
                Statement st = con.createStatement();
                int r = st.executeUpdate(sql);
                if (r == 1) {
                    out.print("Cadastro realizado com sucesso!");
                } else {
                    out.print("O cadastro não realizado!");
                }
            } catch (ClassNotFoundException x) {
                out.print("Erro ao tentar encontrar o driver de conexão " + x.getMessage() + "!");
            } catch (SQLException x) {
                if (x.getErrorCode() == 1062) {
                    out.print("Este ID já está cadastrado!");
                } else {
                    out.print("Erro nº: " + x.getErrorCode());
                    out.print("<br>Mensagem de Erro: " + x.getMessage());
                }
            }
        %>
    </body>
</html>
