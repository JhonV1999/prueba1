package com.google.buscador.venta.daos;

import java.util.List;

import com.google.buscador.venta.bean.CategoriaBean;
import com.google.buscador.venta.bean.CelularBean;

public interface CelularDAO {

	public int insertaCelular(CelularBean obj) throws Exception;
	
	public List<CategoriaBean> listaCategoria() throws Exception;

}
