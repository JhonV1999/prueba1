package com.google.buscador.venta.service;

import java.util.List;

import com.google.buscador.venta.bean.ComputadoraBean;
import com.google.buscador.venta.bean.MarcaBean;
import com.google.buscador.venta.daos.ComputadoraDAO;
import com.google.buscador.venta.daos.DAOFactory;

public class ComputadoraServiceImpl implements ComputadoraService{

	DAOFactory fabrica = DAOFactory.getFactorty(DAOFactory.MYSQL);
	ComputadoraDAO dao = fabrica.getComputadora();
	
	@Override
	public int insertaComputadora(ComputadoraBean obj) throws Exception {
		return dao.insertaComputadora(obj);
	}

	@Override
	public List<MarcaBean> listaMarca() throws Exception {
		return dao.listaMarca();
	}

	
}
