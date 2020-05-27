package com.google.buscador.venta.service;

import java.util.List;

import com.google.buscador.venta.bean.CategoriaBean;
import com.google.buscador.venta.bean.CelularBean;

public interface CelularService {

	public int insertaCelular(CelularBean obj) throws Exception;
	
	public List<CategoriaBean> listaCategoria() throws Exception;
	
	
}
