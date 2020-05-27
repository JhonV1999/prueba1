package com.google.buscador.venta.daos;


public class MySqlDAOFActory extends DAOFactory {

	
	@Override
	public ComputadoraDAO getComputadora() {
		return new MySqlComputadoraDAO();
	}

	@Override
	public CelularDAO getCelular() {
		return new MySqlCelularDAO();
	}

	@Override
	public ClienteDAO getCliente() {
		return new MySqlClienteDAO();
	}

	
}
