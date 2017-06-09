package action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;

import model.Producto;
import service.ProductoService;

public class ProductoAction extends ActionSupport {

	private int codigo;
	List<Producto> lstproductos;
	private Producto producto;
	
	public String cargar() {
		ProductoService servicio = new ProductoService();

		producto = servicio.obtener(codigo);

		if (producto == null) { 
			addActionError("Error al cargar!!");
			return "error";
		} else {
			addActionMessage("Producto encontrado !!");			
			return "ok";
		}
	}
	
	public String eliminar() {
		ProductoService servicio = new ProductoService();

		int ok = servicio.eliminar(codigo);

		if (ok == 0) { // validacion
			addActionError("Error al eliminar!!");
			return "error";
		} else {
			addActionMessage("Producto Eliminado !!");
			listar();
			return "ok";
		}
	}
	

	public String listar() {

		ProductoService servicio = new ProductoService();

		lstproductos = servicio.listado();
		System.out.println("-- listar -- ");
		if (lstproductos == null) { // validacion
			addActionError("Listado vacío!!");
			return "error";
		} else {
			return "ok";
		}
	}

	
	

	public String procesar() {
		ProductoService servicio = new ProductoService();

		int ok = servicio.registrar(producto);

		if (ok == 0) { // validacion
			addActionError("Error al registrar!!");
			return "error";
		} else {
			addActionMessage("Registro exitoso!!");
			return "ok";
		}
	}

	public List<Producto> getLstproductos() {
		return lstproductos;
	}

	public void setLstproductos(List<Producto> lstproductos) {
		this.lstproductos = lstproductos;
	}

	public Producto getProducto() {
		return producto;
	}

	public void setProducto(Producto producto) {
		this.producto = producto;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}


}
