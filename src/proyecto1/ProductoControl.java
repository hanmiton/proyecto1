package proyecto1;

import java.sql.Statement;

public class ProductoControl {
	
	public String insertar(Producto p){
		
		ConexionBD conex = new ConexionBD();
		String resultado = "no se";
		
		try{
			Statement st = conex.getConnection().createStatement();
			String sql = "INSERT INTO ingeniero (pro_nombre, pro_precio) VALUES ('"+p.getNombre()+"', " + p.getPrecio() + ")";
			st.executeUpdate(sql);
			st.close();
			conex.desconectar();
			resultado = "exito";
		}catch(Exception e){
			resultado = "error" + e; 
		}
		return resultado;
		
	}
}
