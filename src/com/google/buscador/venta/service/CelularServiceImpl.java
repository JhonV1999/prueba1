package com.google.buscador.venta.service;

import java.util.List;

import com.google.buscador.venta.bean.CategoriaBean;
import com.google.buscador.venta.bean.CelularBean;
import com.google.buscador.venta.daos.CelularDAO;
import com.google.buscador.venta.daos.DAOFactory;

public class CelularServiceImpl implements CelularService{

	DAOFactory fabrica = DAOFactory.getFactorty(DAOFactory.MYSQL);
	CelularDAO dao = fabrica.getCelular();
	
	@Override
	public int insertaCelular(CelularBean obj) throws Exception {
		return dao.insertaCelular(obj);
	}

	@Override
	public List<CategoriaBean> listaCategoria() throws Exception {
		return dao.listaCategoria();
	}

	
}
