package com.google.buscador.venta.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.google.buscador.venta.bean.CategoriaBean;
import com.google.buscador.venta.bean.CelularBean;
import com.google.buscador.venta.service.CelularServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import lombok.Getter;
import lombok.Setter;

@ParentPackage("dawi")
public class CelularAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;

	@Getter @Setter
	private List<CategoriaBean> lstCategoria;
	
	@Getter @Setter
	private CelularBean celular;
	
	private Map<String, Object> session = ActionContext.getContext().getSession();
	
	@Action(value = "/cargaCategoria", results = { @Result(name = "salida", type = "json") })
	public String metodo01() {
		CelularServiceImpl service = new CelularServiceImpl();
		try {
			lstCategoria = service.listaCategoria();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "salida";
	}


	@Action(value = "/registraCelular", results = {@Result(name = "salida", location = "/registraCelular.jsp", type = "redirect") })
	public String metodo02() {
		CelularServiceImpl service = new CelularServiceImpl();
		try {
			int s = service.insertaCelular(celular);
			if (s > 0) {
				session.put("MENSAJE", "Registro exitoso");
			} else {
				session.put("MENSAJE", "Registro erróneo");
			}
		} catch (Exception e) {
			e.printStackTrace();
			session.put("MENSAJE", "Registro erróneo");
		}

		return "salida";
	}
	
}




