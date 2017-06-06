package org.comercio.producto;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import org.comercio.utilidad.BaseDato;
import org.comercio.producto.Producto;


public class tienda {
	public ArrayList<Producto> getProductos() {

		ArrayList<Producto> lista = new ArrayList<Producto>();

		BaseDato basedato = new BaseDato();

		Connection conexion1 = null;

		Statement sentencia1 = null;

		ResultSet rs1 = null;

		String sql = "";

		try{

		conexion1 = basedato.getConexion();

		sentencia1 = conexion1.createStatement();

		sql = "select * from producto";



		rs1 = sentencia1.executeQuery(sql);



		while(rs1.next()){

		int codigo = rs1.getInt("pro_codigo");
		String nombre = rs1.getString("pro_nombre");
		double precio = rs1.getDouble("pro_precio");
		String imagen = rs1.getString("pro_imagen");
		String descripcion = rs1.getString("pro_descripcion");
		String descripcionLarga = rs1.getString("pro_descripcionLarga");
		
		Producto producto = new Producto();

		producto.setCodigo(codigo);
		producto.setNombre(nombre);
		producto.setPrecio(precio);
		producto.setImagen(imagen);
		producto.setDescripcion(descripcion);
		producto.setDescripcionLarga(descripcionLarga);



		lista.add(producto);

		}

		}

		catch(Exception e){

		System.out.println("Error: " + e.toString());

		}

		return new ArrayList<Producto>(lista);

		}
}
