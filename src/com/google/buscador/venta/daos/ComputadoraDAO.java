package com.google.buscador.venta.daos;

import java.util.List;

import com.google.buscador.venta.bean.ComputadoraBean;
import com.google.buscador.venta.bean.MarcaBean;

public interface ComputadoraDAO {

	public int insertaComputadora(ComputadoraBean obj) throws Exception;
	
	public List<MarcaBean> listaMarca() throws Exception;
	
	
}
