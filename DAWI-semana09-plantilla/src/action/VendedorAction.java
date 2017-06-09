package action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;

import model.Vendedor;
import service.VendedorService;

@ParentPackage("dawi")
public class VendedorAction extends ActionSupport {
	private List<Vendedor> listaVen = new ArrayList<>();
	private Vendedor ven;
	private VendedorService service = new VendedorService();

	@Action(value = "/sesion", results = { @Result(name = "sesion", location = "/bienvenido.jsp"),
			@Result(name = "error", location = "/logueo.jsp") })
	public String sesion() throws Exception {
		Vendedor vendedor = service.sesion(ven);
		System.out.println("va");
		if (vendedor == null) {
			addActionError("Usuario y/o contraseña incorrecta");
			return "error";
		}else {
			addActionMessage("" + vendedor.getUsuario());
			return "sesion";
		}
	}

	public List<Vendedor> getListaVen() {
		return listaVen;
	}

	public void setListaVen(List<Vendedor> listaVen) {
		this.listaVen = listaVen;
	}

	public Vendedor getVen() {
		return ven;
	}

	public void setVen(Vendedor ven) {
		this.ven = ven;
	}

	public VendedorService getService() {
		return service;
	}

	public void setService(VendedorService service) {
		this.service = service;
	}

}
