<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="proyecto1.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form autocomplete="off" action="insertar.jsp" method="post">
		<p>
			Nombre
			<br/>
			<input type="text" name="nombre" required="required"/>
		</p>
		<p>
			Precio
			<br/>
			<input type="number" name="precio" required="required"/>
		</p>
		
		<input type= "reset" value="Restablecer Campos"/>
		<input type= "submit" name="enviar" value="Insertar Producto"/>
		
	</form>
</body>
</html>

<%
	if(request.getParameter("enviar") != null){
		String nombre = request.getParameter("nombre");
		String precioStr = request.getParameter("precio");
		
		int precio = Integer.parseInt(precioStr);
		
		
		Producto p = new Producto();
		p.setNombre(nombre);
		p.setPrecio(precio);
		
		out.println(p.getNombre());
		out.println(p.getPrecio());
		
		ProductoControl pc = new ProductoControl();
		String res = pc.insertar(p);
		
		out.println(res);
	}
%>