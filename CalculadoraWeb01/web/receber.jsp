<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultado da Média</title>
</head>
<body>
    <h1>Resultado da Média</h1>
    
    <%-- Recebendo os parâmetros do formulário --%>
    <% 
        // Recebendo as notas do formulário
        String nota1Str = request.getParameter("nota1");
        String nota2Str = request.getParameter("nota2");
        
        // Convertendo as notas para números
        double nota1 = Double.parseDouble(nota1Str);
        double nota2 = Double.parseDouble(nota2Str);
        
        
        double media = (nota1 + nota2) / 2;
        
        
        String mediaFormatada = String.format("%.2f", media);
    %>
    
    <%-- Exibindo a média formatada --%>
    <p>A média das notas é: <%= mediaFormatada %></p>
</body>
</html>
