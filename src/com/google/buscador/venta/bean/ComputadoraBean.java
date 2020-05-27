package com.google.buscador.venta.bean;

import lombok.Data;

@Data
public class ComputadoraBean {

	private int idComputadora;
	private String nombre;
	private double precio;
	private int stock;
	private MarcaBean marca;
	
}
